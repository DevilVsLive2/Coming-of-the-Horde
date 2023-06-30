function Trig_Dalaran_Shield_Dies_Actions takes nothing returns nothing
    call RemoveUnit(gg_unit_n004_0207)
    call RemoveUnit(gg_unit_n004_0206)
    call RemoveWeatherEffect(GetLastCreatedWeatherEffect())
    call AddWeatherEffectSaveLast(gg_rct_Dalaran_Section_2,'MEds')
    call EnableWeatherEffect(GetLastCreatedWeatherEffect(),true)
    call SetUnitInvulnerable(gg_unit_ndt2_0200,false)
    call KillUnit(gg_unit_h001_0211)
    call KillUnit(gg_unit_h01Y_0213)
    call RemoveUnit(gg_unit_o00G_0251)
    call RemoveDestructable(gg_dest_Dofv_1589)
    call DisableTrigger(gg_trg_Dalaran_Shield)
    call KillDestructable(gg_dest_XTbd_1206)
    call KillDestructable(gg_dest_XTbd_1215)
    set udg_TempPoint=GetDestructableLoc(gg_dest_IOt0_3752)
    call RemoveDestructable(gg_dest_IOt0_3752)
    call CreateDestructableLoc('B002',udg_TempPoint,GetRandomDirectionDeg(),0.80,0)
    call RemoveLocation(udg_TempPoint)
    call TriggerSleepAction(1.50)
    call KillDestructable(gg_dest_XTbd_1748)
    call KillDestructable(gg_dest_XTbd_1258)
    call TriggerSleepAction(1.00)
    call KillDestructable(gg_dest_XTbd_1269)
    call TriggerSleepAction(1.00)
    call KillDestructable(gg_dest_XTbd_0696)
    endfunction
    function InitTrig_Dalaran_Shield_Dies takes nothing returns nothing
    set gg_trg_Dalaran_Shield_Dies=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Dalaran_Shield_Dies,gg_unit_ndt2_0201,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Dalaran_Shield_Dies,function Trig_Dalaran_Shield_Dies_Actions)
    endfunction