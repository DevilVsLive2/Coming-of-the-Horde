function Trig_Kilrogg_Starts_Func001Func009Func001Func005Func004Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(11)))then
    return false
    endif
    return true
    endfunction
    function Trig_Kilrogg_Starts_Func001Func009Func001Func005Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(10)))then
    return false
    endif
    return true
    endfunction
    function Trig_Kilrogg_Starts_Func001Func009Func001Func005C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(9)))then
    return false
    endif
    return true
    endfunction
    function Trig_Kilrogg_Starts_Func001Func009Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kilrogg_Starts_Func001Func009C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A03Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kilrogg_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AOww'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kilrogg_Starts_Actions takes nothing returns nothing
    if(Trig_Kilrogg_Starts_Func001C())then
    call EnableTrigger(gg_trg_Bladestorm_Damage_Reduce)
    call EnableTrigger(gg_trg_Bladestorm_Damage)
    call UnitAddAbilityBJ('A0BM',gg_unit_Osam_0526)
    call PolledWait((1+I2R(GetUnitAbilityLevelSwapped('AOww',gg_unit_Osam_0526))))
    call UnitRemoveAbilityBJ('A0BM',gg_unit_Osam_0526)
    call DisableTrigger(gg_trg_Bladestorm_Damage_Reduce)
    call DisableTrigger(gg_trg_Bladestorm_Damage)
    else
    if(Trig_Kilrogg_Starts_Func001Func009C())then
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),((I2R(GetUnitAbilityLevelSwapped('A03Y',GetTriggerUnit()))*75.00)+75.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    else
    if(Trig_Kilrogg_Starts_Func001Func009Func001C())then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    if(Trig_Kilrogg_Starts_Func001Func009Func001Func005C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Light_Blue)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Light_Blue)
    else
    if(Trig_Kilrogg_Starts_Func001Func009Func001Func005Func004C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Dark_Green)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Dark_Green)
    else
    if(Trig_Kilrogg_Starts_Func001Func009Func001Func005Func004Func004C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Brown)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Brown)
    else
    endif
    endif
    endif
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Kilrogg_Starts takes nothing returns nothing
    set gg_trg_Kilrogg_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Kilrogg_Starts,function Trig_Kilrogg_Starts_Actions)
    endfunction