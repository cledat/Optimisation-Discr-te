function extract_data_from_netcdf_hydro(file_path)
    myds = NCDataset(file_path, "r")
    blk0 = myds.group["Block_0"]
    active_power_demand_hydro = blk0["ActivePowerDemand"][:]
    blk = blk0.group["UnitBlock_0"]

    StartArc = blk["StartArc"][:]
    EndArc = blk["EndArc"][:]
    Inflows = blk["Inflows"][:]
    InitialVolume = blk["InitialVolumetric"][:]
    MaxVolume = blk["MaxVolumetric"][:]
    InitialFlowRate = blk["InitialFlowRate"][:]
    DeltaRampUp_hydro = blk["DeltaRampUp"][:]
    DeltaRampDown_hydro = blk["DeltaRampDown"][:]
    MinFlow = blk["MinFlow"][:]
    MaxFlow = blk["MaxFlow"][:]
    MinPower = blk["MinPower"][:]
    MaxPower = blk["MaxPower"][:]
    LinearTerm_hydro = blk["LinearTerm"][:]
    ConstantTerm_hydro = blk["ConstantTerm"][:]
#     NumberArcs = blk0.dim["NumberArcs"]

    close(myds)
    return StartArc, EndArc, Inflows, InitialVolume, MaxVolume, InitialFlowRate, DeltaRampUp_hydro, DeltaRampDown_hydro, MinFlow, MaxFlow, MinPower, MaxPower,LinearTerm_hydro,ConstantTerm_hydro
   
end
