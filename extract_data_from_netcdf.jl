
function extract_data_from_netcdf(file_path)
    myds = NCDataset(file_path, "r")
    
    blk0 = myds.group["Block_0"]

    nbUnit = blk0.dim["NumberUnits"]

    T = blk0.dim["TimeHorizon"]
    m = blk0.dim["NumberUnits"]
    Δt = blk0.dim["NumberIntervals"]

    ThUnits = []
    min_power = []
    max_power = []
    delta_ramp_up = []
    delta_ramp_down = []
    start_up_cost = []
    linear_term = []
    quad_term = []
    InitUpDownTime = []
    MinDownTime = []
    MinUpTime = []
    InitialPower = []

    const_term = []

    for ky in keys(blk0.group)
        if haskey(blk0.group[ky].attrib, "type") &&
            blk0.group[ky].attrib["type"] == "ThermalUnitBlock"

            push!(ThUnits, ky)
            push!(min_power, blk0.group[ky]["MinPower"][:])
            push!(max_power, blk0.group[ky]["MaxPower"][:])
            push!(delta_ramp_up, blk0.group[ky]["DeltaRampUp"][:])
            push!(delta_ramp_down, blk0.group[ky]["DeltaRampDown"][:])
            push!(start_up_cost, blk0.group[ky]["StartUpCost"][:])
            push!(linear_term, blk0.group[ky]["LinearTerm"][:])
            push!(const_term, blk0.group[ky]["ConstTerm"][:])
            push!(quad_term, blk0.group[ky]["QuadTerm"][:])
            push!(InitUpDownTime, blk0.group[ky]["InitUpDownTime"][:])
            push!(MinDownTime, blk0.group[ky]["MinDownTime"][:])
            push!(MinUpTime, blk0.group[ky]["MinUpTime"][:])
            push!(InitialPower, blk0.group[ky]["InitialPower"][:])

        end
    end

    min_power = vcat(min_power...)
    max_power = vcat(max_power...)
    delta_ramp_up = vcat(delta_ramp_up...)
    delta_ramp_down = vcat(delta_ramp_down...)
    start_up_cost = vcat(start_up_cost...)
    linear_term = vcat(linear_term...)
    const_term = vcat(const_term...)
    quad_term = vcat(quad_term...)
    InitUpDownTime = vcat(InitUpDownTime...)
    MinDownTime = vcat(MinDownTime...)
    MinUpTime = vcat(MinUpTime...)
    InitialPower = vcat(InitialPower...)

    MinDownTime = float(MinDownTime)
    MinUpTime = float(MinUpTime)

    d = blk0["ActivePowerDemand"][:]

    close(myds)

    return T, m, Δt, ThUnits, min_power, max_power, delta_ramp_up, delta_ramp_down, start_up_cost, linear_term, const_term, quad_term, d, InitUpDownTime, MinDownTime, MinUpTime, InitialPower
end

#file_path = "150_0_3_w.nc4"
#T, m, Δt, ThUnits, min_power, max_power, delta_ramp_up, delta_ramp_down, start_up_cost, linear_term, const_term, quad_term, d, InitUpDownTime, MinDownTime, MinUpTime, InitialPower = extract_data_from_netcdf(file_path)

