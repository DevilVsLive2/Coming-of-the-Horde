function Trig_Galen_Decay_Func001Func001C takes nothing returns boolean
    if(not(udg_DespCounter>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Galen_Decay_Func001C takes nothing returns boolean
    if(not(udg_Fury>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Galen_Decay_Actions takes nothing returns nothing
    if(Trig_Galen_Decay_Func001C())then
    call ModifyHeroStat(bj_HEROSTAT_AGI,gg_unit_H01I_0514,bj_MODIFYMETHOD_SUB,(2+GetUnitAbilityLevelSwapped('A06Y',gg_unit_H01I_0514)))
    set udg_Fury=(udg_Fury-1)
    else
    if(Trig_Galen_Decay_Func001Func001C())then
    call SetUnitAbilityLevelSwapped('A046',gg_unit_H01I_0514,(GetUnitAbilityLevelSwapped('A046',gg_unit_H01I_0514)-1))
    call SetUnitAbilityLevelSwapped('A0FX',gg_unit_H01I_0514,(GetUnitAbilityLevelSwapped('A0FX',gg_unit_H01I_0514)-1))
    set udg_DespCounter=(udg_DespCounter-1)
    set DespCounterMS = DespCounterMS - 1
    else
    endif
    endif
    endfunction
    function InitTrig_Galen_Decay takes nothing returns nothing
    set gg_trg_Galen_Decay=CreateTrigger()
    call DisableTrigger(gg_trg_Galen_Decay)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Galen_Decay,3.50)
    call TriggerAddAction(gg_trg_Galen_Decay,function Trig_Galen_Decay_Actions)
    endfunction