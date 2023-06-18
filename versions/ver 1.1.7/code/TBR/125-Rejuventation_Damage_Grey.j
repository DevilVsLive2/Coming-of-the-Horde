function Trig_Rejuventation_Damage_Grey_Conditions takes nothing returns boolean
    if(not(GetEventDamage()>0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Damage_Grey_Func003Func004C takes nothing returns boolean
    if(not(udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Damage_Grey_Func003C takes nothing returns boolean
    if(not(udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Damage_Grey_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    if(Trig_Rejuventation_Damage_Grey_Func003C())then
    call GroupRemoveUnitSimple(GetTriggerUnit(),udg_RejuvGroup)
    call DestroyEffect(udg_RE2[GetConvertedPlayerId(GetTriggerPlayer())])
    call IssueImmediateOrder(GetTriggerUnit(),"stop")
    else
    if(Trig_Rejuventation_Damage_Grey_Func003Func004C())then
    call GroupRemoveUnitSimple(GetTriggerUnit(),udg_RejuvGroup)
    call DestroyEffect(udg_RE2[GetConvertedPlayerId(GetTriggerPlayer())])
    else
    endif
    endif
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    endfunction
    function InitTrig_Rejuventation_Damage_Grey takes nothing returns nothing
    set gg_trg_Rejuventation_Damage_Grey=CreateTrigger()
    call DisableTrigger(gg_trg_Rejuventation_Damage_Grey)
    call TriggerAddCondition(gg_trg_Rejuventation_Damage_Grey,Condition(function Trig_Rejuventation_Damage_Grey_Conditions))
    call TriggerAddAction(gg_trg_Rejuventation_Damage_Grey,function Trig_Rejuventation_Damage_Grey_Actions)
    endfunction