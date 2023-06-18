function Trig_Rejuventation_Stop_Red_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Stop_Red_Actions takes nothing returns nothing
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=(udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]+1)
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Rejuventation_Stop_Red takes nothing returns nothing
    set gg_trg_Rejuventation_Stop_Red=CreateTrigger()
    call DisableTrigger(gg_trg_Rejuventation_Stop_Red)
    call TriggerAddCondition(gg_trg_Rejuventation_Stop_Red,Condition(function Trig_Rejuventation_Stop_Red_Conditions))
    call TriggerAddAction(gg_trg_Rejuventation_Stop_Red,function Trig_Rejuventation_Stop_Red_Actions)
    endfunction