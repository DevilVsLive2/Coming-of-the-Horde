function Trig_Rejuventation_Heal_Grey_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEsf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Func008C takes nothing returns boolean
    if(not(IsUnitInGroup(GetTriggerUnit(),udg_RejuvGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Func010C takes nothing returns boolean
    if(not(IsUnitInGroup(GetTriggerUnit(),udg_RejuvGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Func012C takes nothing returns boolean
    if(not(IsUnitInGroup(GetTriggerUnit(),udg_RejuvGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Func014C takes nothing returns boolean
    if(not(IsUnitInGroup(GetTriggerUnit(),udg_RejuvGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Func016C takes nothing returns boolean
    if(not(IsUnitInGroup(GetTriggerUnit(),udg_RejuvGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Func018C takes nothing returns boolean
    if(not(IsUnitInGroup(GetTriggerUnit(),udg_RejuvGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Func020C takes nothing returns boolean
    if(not(IsUnitInGroup(GetTriggerUnit(),udg_RejuvGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Func022C takes nothing returns boolean
    if(not(IsUnitInGroup(GetTriggerUnit(),udg_RejuvGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Func024C takes nothing returns boolean
    if(not(IsUnitInGroup(GetTriggerUnit(),udg_RejuvGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Rejuventation_Heal_Grey_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=(udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]+1)
    call GroupAddUnitSimple(GetTriggerUnit(),udg_RejuvGroup)
    call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"Abilities\\Spells\\NightElf\\Tranquility\\TranquilityTarget.mdl")
    set udg_RE2[GetConvertedPlayerId(GetTriggerPlayer())]=GetLastCreatedEffectBJ()
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.04)))
    call TriggerSleepAction(2.00)
    if(Trig_Rejuventation_Heal_Grey_Func008C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.05)))
    else
    call EnableTrigger(GetTriggeringTrigger())
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    return
    endif
    call TriggerSleepAction(2.00)
    if(Trig_Rejuventation_Heal_Grey_Func010C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.07)))
    else
    call EnableTrigger(GetTriggeringTrigger())
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    return
    endif
    call TriggerSleepAction(2.00)
    if(Trig_Rejuventation_Heal_Grey_Func012C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.08)))
    else
    call EnableTrigger(GetTriggeringTrigger())
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    return
    endif
    call TriggerSleepAction(2.00)
    if(Trig_Rejuventation_Heal_Grey_Func014C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.09)))
    else
    call EnableTrigger(GetTriggeringTrigger())
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    return
    endif
    call TriggerSleepAction(2.00)
    if(Trig_Rejuventation_Heal_Grey_Func016C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.11)))
    else
    call EnableTrigger(GetTriggeringTrigger())
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    return
    endif
    call TriggerSleepAction(2.00)
    if(Trig_Rejuventation_Heal_Grey_Func018C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.12)))
    else
    call EnableTrigger(GetTriggeringTrigger())
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    return
    endif
    call TriggerSleepAction(2.00)
    if(Trig_Rejuventation_Heal_Grey_Func020C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.13)))
    else
    call EnableTrigger(GetTriggeringTrigger())
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    return
    endif
    call TriggerSleepAction(2.00)
    if(Trig_Rejuventation_Heal_Grey_Func022C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.15)))
    else
    call EnableTrigger(GetTriggeringTrigger())
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    return
    endif
    call TriggerSleepAction(2.00)
    if(Trig_Rejuventation_Heal_Grey_Func024C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetTriggerUnit())*0.16)))
    call GroupRemoveUnitSimple(GetTriggerUnit(),udg_RejuvGroup)
    call DestroyEffect(udg_RE2[GetConvertedPlayerId(GetTriggerPlayer())])
    call DisableTrigger(gg_trg_Rejuventation_Damage_Grey)
    else
    endif
    set udg_RejuvInt[GetConvertedPlayerId(GetTriggerPlayer())]=0
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Rejuventation_Heal_Grey takes nothing returns nothing
    set gg_trg_Rejuventation_Heal_Grey=CreateTrigger()
    call TriggerAddCondition(gg_trg_Rejuventation_Heal_Grey,Condition(function Trig_Rejuventation_Heal_Grey_Conditions))
    call TriggerAddAction(gg_trg_Rejuventation_Heal_Grey,function Trig_Rejuventation_Heal_Grey_Actions)
    endfunction