function Trig_Rejuventation_Stop_Pink_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Stop_Pink_Actions takes nothing returns nothing
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=(udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]+1)
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Rejuventation_Stop_Pink takes nothing returns nothing
    set gg_trg_Rejuventation_Stop_Pink=CreateTrigger()
    call DisableTrigger(gg_trg_Rejuventation_Stop_Pink)
    call TriggerAddCondition(gg_trg_Rejuventation_Stop_Pink,Condition(function Trig_Rejuventation_Stop_Pink_Conditions))
    call TriggerAddAction(gg_trg_Rejuventation_Stop_Pink,function Trig_Rejuventation_Stop_Pink_Actions)
    endfunction