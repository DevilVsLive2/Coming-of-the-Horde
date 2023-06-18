function Trig_Thoras_Starts_Func001Func002002003001001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Thoras_Starts_Func001Func002002003001002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Thoras_Starts_Func001Func002002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Thoras_Starts_Func001Func002002003001001(),Trig_Thoras_Starts_Func001Func002002003001002())
    endfunction
    function Trig_Thoras_Starts_Func001Func002002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Thoras_Starts_Func001Func002002003002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(0))==true)
    endfunction
    function Trig_Thoras_Starts_Func001Func002002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Thoras_Starts_Func001Func002002003002001(),Trig_Thoras_Starts_Func001Func002002003002002())
    endfunction
    function Trig_Thoras_Starts_Func001Func002002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Thoras_Starts_Func001Func002002003001(),Trig_Thoras_Starts_Func001Func002002003002())
    endfunction
    function Trig_Thoras_Starts_Func001Func003A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Huth_0479,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('ANab',gg_unit_Huth_0479))*50.00)+75.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Thoras_Starts_Func001Func007Func001Func001Func003C takes nothing returns boolean
    if(not(udg_DivineStrength<(3.00*I2R(GetUnitAbilityLevelSwapped('A0E4',GetTriggerUnit())))))then
    return false
    endif
    return true
    endfunction
    function Trig_Thoras_Starts_Func001Func007Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0E4'))then
    return false
    endif
    return true
    endfunction
    function Trig_Thoras_Starts_Func001Func007Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Thoras_Starts_Func001Func007C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='Aroa'))then
    return false
    endif
    return true
    endfunction
    function Trig_Thoras_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANab'))then
    return false
    endif
    return true
    endfunction
    function Trig_Thoras_Starts_Actions takes nothing returns nothing
    local integer mainAttribute = 0
    local integer attribute = 0
    if(Trig_Thoras_Starts_Func001C())then
    set udg_HeroicStrikeTarget=GetUnitLoc(GetSpellTargetUnit())
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(270.00,udg_HeroicStrikeTarget,Condition(function Trig_Thoras_Starts_Func001Func002002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Thoras_Starts_Func001Func003A)
    call RemoveLocation(udg_HeroicStrikeTarget)
    call DestroyGroup(udg_Temp_UnitGroup)
    else
    if(Trig_Thoras_Starts_Func001Func007C())then
    call UnitAddAbilityBJ('A0C7',gg_unit_Huth_0479)
    call UnitAddAbilityBJ('A08A',gg_unit_Huth_0479)
    call SetUnitAbilityLevelSwapped('A08A',gg_unit_Huth_0479,GetUnitAbilityLevelSwapped('Aroa',gg_unit_Huth_0479))
    call PolledWait(30.00)
    call UnitRemoveAbilityBJ('A0C7',gg_unit_Huth_0479)
    call UnitRemoveAbilityBJ('A08A',gg_unit_Huth_0479)
    else
    if(Trig_Thoras_Starts_Func001Func007Func001C())then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    call EnableTrigger(gg_trg_Rejuventation_Damage_Red)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Red)
    else
    if(Trig_Thoras_Starts_Func001Func007Func001Func001C())then
    set udg_DivineStrengthTarget=GetSpellTargetUnit()
    set mainAttribute = CheckHeroMainAttribute(udg_DivineStrengthTarget)
    set attribute = GetHeroStr(GetTriggerUnit(), true)
    if (udg_DivineStrengthTarget == GetTriggerUnit()) then
    set udg_DivineStrength= attribute * .75 //Увеличиваем стат на 75%
    else    
    set udg_DivineStrength= attribute * .40 //Увеличиваем стат на 40%
    endif
    call ModifyHeroStat(mainAttribute,udg_DivineStrengthTarget,bj_MODIFYMETHOD_ADD,R2I(udg_DivineStrength))
    call PlaySoundOnUnitBJ(gg_snd_RestorationPotion,100,udg_DivineStrengthTarget)
    call AddSpecialEffectTargetUnitBJ("origin",udg_DivineStrengthTarget,"Abilities\\Spells\\Items\\AIre\\AIreTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(udg_DivineStrengthTarget),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A0E6',GetLastCreatedUnit())
    call UnitApplyTimedLifeBJ(12.50,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call PolledWait(15.00)
    call ModifyHeroStat(mainAttribute,udg_DivineStrengthTarget,bj_MODIFYMETHOD_SUB,R2I(udg_DivineStrength))
    set udg_DivineStrengthTarget=null
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Thoras_Starts takes nothing returns nothing
    set gg_trg_Thoras_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Thoras_Starts,function Trig_Thoras_Starts_Actions)
    endfunction