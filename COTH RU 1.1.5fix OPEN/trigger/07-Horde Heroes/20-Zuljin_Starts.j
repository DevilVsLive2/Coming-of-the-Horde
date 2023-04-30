function Trig_Zuljin_Starts_Func001Func001Func005Func004Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(11)))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuljin_Starts_Func001Func001Func005Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(10)))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuljin_Starts_Func001Func001Func005C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(9)))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuljin_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuljin_Starts_Func001Func002Func003Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A03X',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuljin_Starts_Func001Func002Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A03X',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuljin_Starts_Func001Func002C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A03X',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuljin_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A03X'))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuljin_Starts_Actions takes nothing returns nothing
    if(Trig_Zuljin_Starts_Func001C())then
    if(Trig_Zuljin_Starts_Func001Func002C())then
    call UnitAddAbilityBJ('A04I',GetTriggerUnit())
    else
    if(Trig_Zuljin_Starts_Func001Func002Func003C())then
    call UnitAddAbilityBJ('A04H',GetTriggerUnit())
    else
    if(Trig_Zuljin_Starts_Func001Func002Func003Func003C())then
    call UnitAddAbilityBJ('A045',GetTriggerUnit())
    else
    endif
    endif
    endif
    call PolledWait(20.00)
    call UnitRemoveAbilityBJ('A04I',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A04H',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A045',GetTriggerUnit())
    else
    if(Trig_Zuljin_Starts_Func001Func001C())then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    if(Trig_Zuljin_Starts_Func001Func001Func005C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Light_Blue)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Light_Blue)
    else
    if(Trig_Zuljin_Starts_Func001Func001Func005Func004C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Dark_Green)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Dark_Green)
    else
    if(Trig_Zuljin_Starts_Func001Func001Func005Func004Func004C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Brown)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Brown)
    else
    endif
    endif
    endif
    else
    endif
    endif
    endfunction
    function InitTrig_Zuljin_Starts takes nothing returns nothing
    set gg_trg_Zuljin_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Zuljin_Starts,function Trig_Zuljin_Starts_Actions)
    endfunction