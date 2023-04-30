function Trig_Rejuventation_Stop_Brown_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Stop_Brown_Actions takes nothing returns nothing
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=(udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]+1)
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Rejuventation_Stop_Brown takes nothing returns nothing
    set gg_trg_Rejuventation_Stop_Brown=CreateTrigger()
    call DisableTrigger(gg_trg_Rejuventation_Stop_Brown)
    call TriggerAddCondition(gg_trg_Rejuventation_Stop_Brown,Condition(function Trig_Rejuventation_Stop_Brown_Conditions))
    call TriggerAddAction(gg_trg_Rejuventation_Stop_Brown,function Trig_Rejuventation_Stop_Brown_Actions)
    endfunction