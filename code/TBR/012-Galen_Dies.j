function Trig_Galen_Dies_Conditions takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A06F',GetDyingUnit())!=0))then
    return false
    endif
    return true
    endfunction
    function Trig_Galen_Dies_Actions takes nothing returns nothing
    set udg_DespCounter=2
    set DespCounterMS = 0
    call SetUnitAbilityLevelSwapped('A0FX',GetDyingUnit(),1)
    call SetUnitAbilityLevelSwapped('A046',GetDyingUnit(),1)
    call DisableTrigger(gg_trg_Galen_Decay)
    endfunction
    function InitTrig_Galen_Dies takes nothing returns nothing
    set gg_trg_Galen_Dies=CreateTrigger()
    call DisableTrigger(gg_trg_Galen_Dies)
    call TriggerRegisterUnitEvent(gg_trg_Galen_Dies,gg_unit_H01I_0514,EVENT_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Galen_Dies,Condition(function Trig_Galen_Dies_Conditions))
    call TriggerAddAction(gg_trg_Galen_Dies,function Trig_Galen_Dies_Actions)
    endfunction