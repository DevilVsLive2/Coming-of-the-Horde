    function DisarmCondition takes nothing returns boolean
        return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and not IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) and not IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL)
    endfunction
    
    function DisarmDamage takes nothing returns nothing
        call UnitDamageTargetBJ(gg_unit_H01I_0514,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A0DY',GetTriggerUnit()))*65.00)+65.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    
    function Trig_Galen_Starts_Actions takes nothing returns nothing
    local group DisarmUnits
    if GetSpellAbilityId()=='A07I' then
        call UnitAddAbilityBJ('A06Z',GetTriggerUnit())
        call SetUnitAbilityLevelSwapped('A06Z',GetTriggerUnit(),GetUnitAbilityLevelSwapped('A07I',GetTriggerUnit()))
        call EnableTrigger(gg_trg_Blistering_Blade_Attack)
        call EnableTrigger(gg_trg_Blistering_Blade_Finish)
        call SetPlayerAbilityAvailableBJ(false,'A06Z',Player(0))
        call PolledWait(10.00)
        call UnitRemoveAbilityBJ('A06Z',gg_unit_H01I_0514)
        call UnitRemoveBuffBJ('B01U',gg_unit_H01I_0514)
        set udg_BlisteringBlade=0.00
        call DisableTrigger(gg_trg_Blistering_Blade_Attack)
        call DisableTrigger(gg_trg_Blistering_Blade_Finish)
    elseif GetSpellAbilityId()=='A0DY' then
        set DisarmUnits = CreateGroup()
        call GroupEnumUnitsInRange(DisarmUnits, GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit()), 180, Condition(function DisarmCondition))
        call ForGroup(DisarmUnits, function DisarmDamage)
    elseif GetSpellAbilityId()=='A06Y' then
        set udg_FuryOn = 1
        call PolledWait(30)
        set udg_FuryOn = 0
        if udg_Fury > 0 then
            call ModifyHeroStat(bj_HEROSTAT_AGI,gg_unit_H01I_0514,bj_MODIFYMETHOD_SUB,((2+GetUnitAbilityLevelSwapped('A06Y',gg_unit_H01I_0514))*udg_Fury))
            set udg_Fury=0
        endif
    elseif GetSpellAbilityId()=='AEsf' then
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=1
    call DestroyEffect(udg_RE[GetConvertedPlayerId(GetTriggerPlayer())])
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"RejuvTarget.mdx")
    set udg_RE[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    call EnableTrigger(gg_trg_Rejuventation_Damage_Red)
    call EnableTrigger(gg_trg_Rejuventation_Stop_Red)
    endif
    call DestroyGroup(DisarmUnits)
    set DisarmUnits = null
    endfunction
    
    function InitTrig_Galen_Starts takes nothing returns nothing
    set gg_trg_Galen_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Galen_Starts,function Trig_Galen_Starts_Actions)
    endfunction