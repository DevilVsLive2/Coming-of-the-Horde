function Trig_Magni_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Magni_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A03Q'))then
    return false
    endif
    return true
    endfunction
    function Trig_Magni_Starts_Actions takes nothing returns nothing
    if(Trig_Magni_Starts_Func001Func001C())then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    call EnableTrigger(gg_trg_Rejuventation_Damage_Orange)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Orange)
    else
    endif
    endfunction

    function InitTrig_Magni_Starts takes nothing returns nothing
    set gg_trg_Magni_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Magni_Starts,function Trig_Magni_Starts_Actions)
    endfunction