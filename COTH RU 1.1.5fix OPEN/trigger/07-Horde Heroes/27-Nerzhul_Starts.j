function Trig_Nerzhul_Starts_Func001Func001Func005Func004Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(11)))then
    return false
    endif
    return true
    endfunction
    function Trig_Nerzhul_Starts_Func001Func001Func005Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(10)))then
    return false
    endif
    return true
    endfunction
    function Trig_Nerzhul_Starts_Func001Func001Func005C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(9)))then
    return false
    endif
    return true
    endfunction
    function Trig_Nerzhul_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Nerzhul_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A07Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_Nerzhul_Starts_Actions takes nothing returns nothing
    if(Trig_Nerzhul_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call SetUnitPositionLoc(gg_unit_o00J_0444,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetSpellTargetLoc()
    call IssuePointOrderLoc(gg_unit_o00J_0444,"clusterrockets",udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Nerzhul_Starts_Func001Func001C())then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    if(Trig_Nerzhul_Starts_Func001Func001Func005C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Light_Blue)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Light_Blue)
    else
    if(Trig_Nerzhul_Starts_Func001Func001Func005Func004C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Dark_Green)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Dark_Green)
    else
    if(Trig_Nerzhul_Starts_Func001Func001Func005Func004Func004C())then
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
    function InitTrig_Nerzhul_Starts takes nothing returns nothing
    set gg_trg_Nerzhul_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Nerzhul_Starts,function Trig_Nerzhul_Starts_Actions)
    endfunction