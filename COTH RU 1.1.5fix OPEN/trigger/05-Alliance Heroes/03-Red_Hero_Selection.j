function Trig_Red_Hero_Selection_Func002Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hmbr'))then
    return false
    endif
    return true
    endfunction
    function Trig_Red_Hero_Selection_Func002Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='H01I'))then
    return false
    endif
    return true
    endfunction
    function Trig_Red_Hero_Selection_Func002Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hdgo'))then
    return false
    endif
    return true
    endfunction
    function Trig_Red_Hero_Selection_Func002C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Huth'))then
    return false
    endif
    return true
    endfunction
    function Trig_Red_Hero_Selection_Actions takes nothing returns nothing
    call SetPlayerHandicapXPBJ(Player(0),99.00)
    if(Trig_Red_Hero_Selection_Func002C())then
    set udg_TempPoint=GetRectCenter(gg_rct_Stromgarde_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Huth_0479,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Huth_0479,Player(0),true)
    call RemoveUnit(GetTrainedUnit())
    call ShowUnitShow(gg_unit_Huth_0479)
    call TriggerRegisterUnitEvent(gg_trg_Thoras_Starts,gg_unit_Huth_0479,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Magic_Resistance,gg_unit_Huth_0479,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Damage_Red,gg_unit_Huth_0479,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Heal_Red,gg_unit_Huth_0479,EVENT_UNIT_SPELL_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Stop_Red,gg_unit_Huth_0479,EVENT_UNIT_SPELL_ENDCAST)
    else
    if(Trig_Red_Hero_Selection_Func002Func001C())then
    set udg_TempPoint=GetRectCenter(gg_rct_Stromgarde_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hdgo_0520,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hdgo_0520,Player(0),true)
    call RemoveUnit(GetTrainedUnit())
    call ShowUnitShow(gg_unit_Hdgo_0520)
    call TriggerRegisterUnitEvent(gg_trg_Danath_Starts,gg_unit_Hdgo_0520,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Stength_of_Stromgarde,gg_unit_Hdgo_0520,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Damage_Red,gg_unit_Hdgo_0520,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Heal_Red,gg_unit_Hdgo_0520,EVENT_UNIT_SPELL_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Stop_Red,gg_unit_Hdgo_0520,EVENT_UNIT_SPELL_ENDCAST)
    else
    if(Trig_Red_Hero_Selection_Func002Func001Func001C())then
    set udg_TempPoint=GetRectCenter(gg_rct_Stromgarde_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_H01I_0514,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_H01I_0514,Player(0),true)
    call RemoveUnit(GetTrainedUnit())
    call ShowUnitShow(gg_unit_H01I_0514)
    call TriggerRegisterUnitEvent(gg_trg_Galen_Starts,gg_unit_H01I_0514,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Fury_Level,gg_unit_H01I_0514,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Damage_Red,gg_unit_H01I_0514,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Heal_Red,gg_unit_H01I_0514,EVENT_UNIT_SPELL_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Stop_Red,gg_unit_H01I_0514,EVENT_UNIT_SPELL_ENDCAST)
    call EnableTrigger(gg_trg_Galen_Decay)
    call EnableTrigger(gg_trg_Galen_Dies)
    call EnableTrigger(gg_trg_Galen_Revives)
    else
    if(Trig_Red_Hero_Selection_Func002Func001Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Stromgarde_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hmbr_0462,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hmbr_0462,Player(0),true)
    call ShowUnitShow(gg_unit_Hmbr_0462)
    set udg_Kurdran=gg_unit_Hmbr_0462
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Kurdran_Starts,Player(0),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Thunder_Shield_Start,Player(0),EVENT_PLAYER_HERO_SKILL)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Thunder_Shield,Player(0),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Skyree_Reset,Player(0),EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Damage_Red,udg_Kurdran,EVENT_UNIT_DAMAGED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Rejuventation_Heal_Red,Player(0),EVENT_PLAYER_UNIT_SPELL_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Rejuventation_Stop_Red,Player(0),EVENT_PLAYER_UNIT_SPELL_ENDCAST)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Red_Hero_Selection takes nothing returns nothing
    set gg_trg_Red_Hero_Selection=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Red_Hero_Selection,gg_unit_n00O_0016,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Red_Hero_Selection,gg_unit_n00P_0020,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Red_Hero_Selection,function Trig_Red_Hero_Selection_Actions)
    endfunction