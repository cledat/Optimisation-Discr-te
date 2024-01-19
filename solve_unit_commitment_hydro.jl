function solve_unit_commitment_hydro(InitialPower,T, m, Δt, ThUnits, min_power, max_power, delta_ramp_up, delta_ramp_down, start_up_cost, linear_term, const_term, quad_term, d, InitUpDownTime,MinDownTime, MinUpTime, StartArc, EndArc, Inflows, InitialVolume, MaxVolume, InitialFlowRate, DeltaRampUp_hydro, DeltaRampDown_hydro, MinFlow, MaxFlow, MinPower, MaxPower,LinearTerm_hydro,ConstantTerm_hydro)
    model = Model(CPLEX.Optimizer)

    
    K = size(InitialVolume)[1]   #nombre de réservoirs 
    J = size(InitialFlowRate)[1]  #nombre d'arcs (turbines ou pompes) reliant les réservoirs

    ## function pour créer une matrice de taille J*K, vaut -1 si la turbine j part du réservoir k et 1 si la turbine j arrive au réservoir

    matrice_co = zeros(Float64, J, K)

    for k in 1:K
        for j in 1:J
            if StartArc[j] == k
                matrice_co[j,k] = -1
            end
        end
        for j in 1:J
            if EndArc[j] == k
                matrice_co[j,k] = 1
            end
        end
    end
    
    #exemple:
    # StartArc = [1,2,2,3,4]
    # EndArc = [2,4,4,2,1]
    # matrice_co = [-1.0 1.0 0.0 0.0; 0.0 -1.0 0.0 1.0; 0.0 -1.0 0.0 1.0; 0.0 1.0 -1.0 0.0; 1.0 0.0 0.0 -1.0]

    
    ## variables pour l'hydraulique

    @variable(model, v[1:K, 1:T] >= 0) #variable volume du réservoir k (k de 1 à K)
    @variable(model, f[1:J, 1:T] >= 0) #variable flowrate sur l'arc (turbine ou pompe) j (j de 1 à J)
    @variable(model, x_hydro[1:J, 1:T] >= 0, Bin) #variable binaire, on allume ou on éteint la turbine/pompe j 
    @variable(model, p_hydro[1:J, 1:T] >= 0 )  ## puissance hydraulique


    @variable(model, x[1:m, 1:T] >= 0, Bin)  # Binary decision variable
    @variable(model, p[1:m, 1:T]>=0) #variable puissance générée par unité de production
    @variable(model, cost[1:m, 1:T] >= 0) #variable coût par unité de production

    @variable(model, z1[1:m, 1:T],Bin) ##vaut 1 si pas de changement d'état et 0 sinon


    # Objective function
    @objective(model, Min, sum(cost[i, t] for i in 1:m, t in 1:T))

    # contraintes pour définir la durée de fonctionnement


    @constraint(model,c1[i=1:m,t=2:T], z1[i, t] >= (x[i,t]-x[i,t-1])) #row 'c8167':  0 >= 1.
    @constraint(model,c3[i=1:m,t=2:T], z1[i, t] <= x[i,t])
    @constraint(model,c4[i=1:m,t=2:T], z1[i, t] <= x[i,t-1])


    # Introduction de z1 et de z2 qui traduisent si la powerplant s'éteint (z2) ou s'allume (z1) 
    #on veut que z soit égale à -1 si on éteint et z égal à 1 si on allume et 0 si pas de changement d'état

    ## exemple: z = [0 1 0 0 0 -1 0 0 0]
    ######################### Contraintes  Combustion ####################"""
    
    for i in 1:m
        for t in 1:(T-max(Int(MinUpTime[i]),Int(MinDownTime[i])))
            @constraint(model, sum(x[i,h] for h in t+1:t+Int(MinUpTime[i])) >= Int(MinUpTime[i])*(x[i,t+1]-x[i,t]))

                    
            @constraint(model, sum(1-x[i,h] for h in t+1:t+Int(MinDownTime[i])) >= Int(MinDownTime[i])*(x[i,t]-x[i,t+1]))
        end
        for t in (T-max(Int(MinUpTime[i]),Int(MinDownTime[i]))):T-1
            @constraint(model,x[i,t+1]==x[i,t])
        end
    end

    @constraint(model,cint4[i=1:m], p[i, 1] >= InitialPower[i],base_name="test5") #puissance nulle à l'instant initial
    @constraint(model,c11[i=1:m,t=2:T], min_power[i]*x[i,t] <= p[i, t],base_name="test6")
    @constraint(model,c12[i=1:m,t=2:T], p[i, t] <= max_power[i]*x[i,t],base_name="test7")
    @constraint(model,c13[i=1:m,t=2:T-1], p[i, t+1]-p[i,t] <= delta_ramp_up[i]+(min_power[i]-delta_ramp_up[i])*(1-x[i,t]))
    @constraint(model,c14[i=1:m,t=2:T-1], -p[i, t+1]+p[i,t] <= delta_ramp_down[i]+(min_power[i]-delta_ramp_down[i])*(1-x[i,t]))



    #contrainte sur le calcul du coût 
    ##si durée de fonctionnement égal à 1 on fait payer le coût de démarrage 
    @constraint(model,c15[i=1:m,t=2:T], cost[i, t] == z1[i,t] * (start_up_cost[i]) +
                               linear_term[i] * p[i, t] +
                               const_term[i] * x[i,t],base_name="test10")
                # Power balance constraint
    
    


    # Objective function
    @objective(model, Min, sum(cost[i, t] for i in 1:m, t in 1:T))

    # contraintes pour définir la durée de fonctionnement

    # contraintes pour définir z1


    #### CONTRAINTES SPÉCIFIQUES AUX UNITÉS HYDRAULIQUES

    
    
    

    # Contraintes sur le volume des réservoirs

    for k in 1:K
        @constraint(model, v[k, 1] == InitialVolume[k]) # volume initial
        for t in 2:T
            @constraint(model, 0<= v[k, t])
            @constraint(model, v[k, t]<= MaxVolume[k])
            @constraint(model, v[k, t] == v[k,t-1] + Inflows[k] + sum(f[j,t]*matrice_co[j,k] for j in 1:J))
        end
    end


    # Contraintes sur le flowrate de chaque arc

    for j in 1:J
        @constraint(model, f[j, 1] == InitialFlowRate[j]) # flowrate initial (vaut 0)
        for t in 1:T-1
            @constraint(model, MinFlow[j] <= f[j, t])
            @constraint(model, f[j, t] <= MaxFlow[j])
            @constraint(model, f[j,t+1] - f[j,t] <= DeltaRampUp_hydro[j]) ## Ajouter une contrainte cohérente pour l'instant T
            @constraint(model, -f[j,t+1] + f[j,t] <= DeltaRampDown_hydro[j])

        end
    end


    # Contraintes sur la production hydroélectrique (linear term (positif pour une turbine, négatif pour une pompe)* flowrate)

    for j in 1:J
        for t in 1:T
            @constraint(model, MinPower[j]*x_hydro[j] <= p_hydro[j, t])
            @constraint(model, p_hydro[j, t] <= MaxPower[j]*x_hydro[j])
            @constraint(model, p_hydro[j,t] == MinPower[j]*0 + LinearTerm_hydro[j]*f[j,t])
        end
    end




    #puissance pour les unités thermiques




    #contrainte sur le calcul du coût pour les unités thermiques


    # Power balance constraint avec unités thermiques + unité hydraulique
    for t in 1:T
        @constraint(model, sum(p[i, t] for i in 1:m) + sum(p_hydro[j,t] for j in 1:J) >= d[t])
    end

    # Solve the model
    optimize!(model)

    # Return the solution
    return value.(x), value.(p), value.(cost), value.(x_hydro), value.(p_hydro), value.(f), value.(v)

end
