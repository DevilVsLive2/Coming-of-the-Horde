function Trig_Rejuventation_Stop_Teal_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Stop_Teal_Actions takes nothing returns nothing
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=(udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]+1)
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Rejuventation_Stop_Teal takes nothing returns nothing
    set gg_trg_Rejuventation_Stop_Teal=CreateTrigger()
    call DisableTrigger(gg_trg_Rejuventation_Stop_Teal)
    call TriggerAddCondition(gg_trg_Rejuventation_Stop_Teal,Condition(function Trig_Rejuventation_Stop_Teal_Conditions))
    call TriggerAddAction(gg_trg_Rejuventation_Stop_Teal,function Trig_Rejuventation_Stop_Teal_Actions)
    endfunction