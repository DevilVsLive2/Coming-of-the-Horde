function Trig_Rejuventation_Stop_Orange_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Stop_Orange_Actions takes nothing returns nothing
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=(udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]+1)
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Rejuventation_Stop_Orange takes nothing returns nothing
    set gg_trg_Rejuventation_Stop_Orange=CreateTrigger()
    call DisableTrigger(gg_trg_Rejuventation_Stop_Orange)
    call TriggerAddCondition(gg_trg_Rejuventation_Stop_Orange,Condition(function Trig_Rejuventation_Stop_Orange_Conditions))
    call TriggerAddAction(gg_trg_Rejuventation_Stop_Orange,function Trig_Rejuventation_Stop_Orange_Actions)
    endfunction