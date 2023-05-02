function Trig_Teron_Starts_Func001Func001Func005Func004Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(11)))then
    return false
    endif
    return true
    endfunction
    function Trig_Teron_Starts_Func001Func001Func005Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(10)))then
    return false
    endif
    return true
    endfunction
    function Trig_Teron_Starts_Func001Func001Func005C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(9)))then
    return false
    endif
    return true
    endfunction
    function Trig_Teron_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Teron_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A007'))then
    return false
    endif
    return true
    endfunction
    function Trig_Teron_Starts_Actions takes nothing returns nothing
    if(Trig_Teron_Starts_Func001C())then
    set udg_SoulExtraction=((((I2R(GetUnitAbilityLevelSwapped('A007',gg_unit_Ogld_0530))*0.02)+0.02)*GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetSpellTargetUnit()))+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Ogld_0530,true))*2.00))
    set udg_TempPoint=GetUnitLoc(gg_unit_Ogld_0530)
    set udg_TempPoint2=GetSpellTargetLoc()
    set udg_SoulReal=DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2)
    set udg_SoulTarget=GetSpellTargetUnit()
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call PolledWait(((udg_SoulReal/ 900.00)+0.15))
    call UnitDamageTargetBJ(gg_unit_Ogld_0530,udg_SoulTarget,udg_SoulExtraction,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call SetUnitManaBJ(gg_unit_Ogld_0530,(GetUnitStateSwap(UNIT_STATE_MANA,gg_unit_Ogld_0530)+udg_SoulExtraction))
    call AddSpecialEffectTargetUnitBJ("overhead",gg_unit_Ogld_0530,"Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    if(Trig_Teron_Starts_Func001Func001C())then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    if(Trig_Teron_Starts_Func001Func001Func005C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Light_Blue)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Light_Blue)
    else
    if(Trig_Teron_Starts_Func001Func001Func005Func004C())then
    call EnableTrigger(gg_trg_Rejuventation_Damage_Dark_Green)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Dark_Green)
    else
    if(Trig_Teron_Starts_Func001Func001Func005Func004Func004C())then
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
    function InitTrig_Teron_Starts takes nothing returns nothing
    set gg_trg_Teron_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Teron_Starts,function Trig_Teron_Starts_Actions)
    endfunction