function Trig_Kiljaeden_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kiljaeden_Starts_Actions takes nothing returns nothing
    if(Trig_Kiljaeden_Starts_Func001C())then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    call EnableTrigger(gg_trg_Rejuventation_Damage_Yellow)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Yellow)
    else
    endif
    endfunction
    function InitTrig_Kiljaeden_Starts takes nothing returns nothing
    set gg_trg_Kiljaeden_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Kiljaeden_Starts,function Trig_Kiljaeden_Starts_Actions)
    endfunction