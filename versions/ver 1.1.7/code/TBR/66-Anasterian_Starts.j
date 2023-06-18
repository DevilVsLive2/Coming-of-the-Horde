function Trig_Anasterian_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Anasterian_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A06I'))then
    return false
    endif
    return true
    endfunction
    function Trig_Anasterian_Starts_Actions takes nothing returns nothing
    if(Trig_Anasterian_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    set udg_TempPoint2=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'o008',Player(6),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A06R',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A06R',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A06I',gg_unit_Hkal_0491))
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"clusterrockets",udg_TempPoint2)
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    else
    if(Trig_Anasterian_Starts_Func001Func001C())then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    call EnableTrigger(gg_trg_Rejuventation_Damage_Green)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Green)
    else
    endif
    endif
    endfunction
    function InitTrig_Anasterian_Starts takes nothing returns nothing
    set gg_trg_Anasterian_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Anasterian_Starts,function Trig_Anasterian_Starts_Actions)
    endfunction