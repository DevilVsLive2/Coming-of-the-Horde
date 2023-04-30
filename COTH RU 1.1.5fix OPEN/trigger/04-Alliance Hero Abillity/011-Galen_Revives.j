function Trig_Galen_Revives_Func001C takes nothing returns boolean
    if(not(udg_Fury>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Galen_Revives_Actions takes nothing returns nothing
    if(Trig_Galen_Revives_Func001C())then
    call ModifyHeroStat(bj_HEROSTAT_AGI,gg_unit_H01I_0514,bj_MODIFYMETHOD_SUB,((2+GetUnitAbilityLevelSwapped('A06Y',gg_unit_H01I_0514))*udg_Fury))
    set udg_Fury=0
    else
    endif
    call EnableTrigger(gg_trg_Galen_Decay)
    endfunction
    function InitTrig_Galen_Revives takes nothing returns nothing
    set gg_trg_Galen_Revives=CreateTrigger()
    call DisableTrigger(gg_trg_Galen_Revives)
    call TriggerRegisterUnitEvent(gg_trg_Galen_Revives,gg_unit_H01I_0514,EVENT_UNIT_HERO_REVIVE_FINISH)
    call TriggerAddAction(gg_trg_Galen_Revives,function Trig_Galen_Revives_Actions)
    endfunction