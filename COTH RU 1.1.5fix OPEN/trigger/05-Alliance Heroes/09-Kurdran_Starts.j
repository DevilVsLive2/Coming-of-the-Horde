function Trig_Kurdran_Starts_Conditions takes nothing returns boolean
    if(not(IsUnitType(GetSpellAbilityUnit(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Kurdran_Starts_Func002Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kurdran_Starts_Func002Func001Func002C takes nothing returns boolean
    if(not(udg_SkyreeOnOff==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Kurdran_Starts_Func002Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='Arav'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kurdran_Starts_Func002Func009002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Kurdran_Starts_Func002Func009002003002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(0))==true)
    endfunction
    function Trig_Kurdran_Starts_Func002Func009002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kurdran_Starts_Func002Func009002003001(),Trig_Kurdran_Starts_Func002Func009002003002())
    endfunction
    function Trig_Kurdran_Starts_Func002Func010A takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),(I2R(GetUnitAbilityLevelSwapped('A051',GetTriggerUnit()))*70.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call CreateNUnitsAtLoc(1,'o008',Player(0),udg_StormHammerTarget,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A05K',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A05K',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A051',udg_Kurdran))
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssueTargetOrder(GetLastCreatedUnit(),"acidbomb",GetEnumUnit())
    endfunction
    function Trig_Kurdran_Starts_Func002C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A051'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kurdran_Starts_Actions takes nothing returns nothing
    if(Trig_Kurdran_Starts_Func002C())then
    set udg_StormHammerCaster=GetUnitLoc(GetTriggerUnit())
    set udg_StormHammerTarget=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'ownr',Player(0),udg_StormHammerCaster,bj_UNIT_FACING)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(),GetUnitFlyHeight(GetTriggerUnit()),0.00)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_StormHammerTarget)
    call PolledWait((DistanceBetweenPoints(udg_StormHammerCaster,udg_StormHammerTarget)/ 700.00))
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(260.00,udg_StormHammerTarget,Condition(function Trig_Kurdran_Starts_Func002Func009002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Kurdran_Starts_Func002Func010A)
    call RemoveLocation(udg_StormHammerCaster)
    call RemoveLocation(udg_StormHammerTarget)
    call DestroyGroup(udg_Temp_UnitGroup)
    else
    if(Trig_Kurdran_Starts_Func002Func001C())then
    if(Trig_Kurdran_Starts_Func002Func001Func002C())then
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AEsf')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'A05Y')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'Asbp')
    set udg_Skyree=(16-(GetUnitAbilityLevelSwapped('Arav',GetTriggerUnit())*4))
    call ModifyHeroStat(bj_HEROSTAT_STR,GetTriggerUnit(),bj_MODIFYMETHOD_SUB,udg_Skyree)
    call SetUnitInvulnerable(GetTriggerUnit(),true)
    call TriggerSleepAction(0.01)
    call SetUnitInvulnerable(GetTriggerUnit(),false)
    set udg_SkyreeOnOff=true
    else
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AEsf')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'A05Y')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'Asbp')
    call ModifyHeroStat(bj_HEROSTAT_STR,GetTriggerUnit(),bj_MODIFYMETHOD_ADD,udg_Skyree)
    call SetUnitInvulnerable(GetTriggerUnit(),true)
    call TriggerSleepAction(0.01)
    call SetUnitInvulnerable(GetTriggerUnit(),false)
    set udg_SkyreeOnOff=false
    endif
    else
    if(Trig_Kurdran_Starts_Func002Func001Func001C())then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    call EnableTrigger(gg_trg_Rejuventation_Damage_Red)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Red)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Kurdran_Starts takes nothing returns nothing
    set gg_trg_Kurdran_Starts=CreateTrigger()
    call TriggerAddCondition(gg_trg_Kurdran_Starts,Condition(function Trig_Kurdran_Starts_Conditions))
    call TriggerAddAction(gg_trg_Kurdran_Starts,function Trig_Kurdran_Starts_Actions)
    endfunction