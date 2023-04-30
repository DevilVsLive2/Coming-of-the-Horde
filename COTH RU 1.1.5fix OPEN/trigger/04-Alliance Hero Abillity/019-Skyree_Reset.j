function Trig_Skyree_Reset_Func005C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A051',udg_Kurdran)>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Skyree_Reset_Func006C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05J',udg_Kurdran)>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Skyree_Reset_Func007C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05L',udg_Kurdran)>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Skyree_Reset_Func008C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('Arav',udg_Kurdran)>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Skyree_Reset_Func009C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('Aamk',udg_Kurdran)>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Skyree_Reset_Func011Func001Func002C takes nothing returns boolean
    if((UnitItemInSlotBJ(udg_Kurdran,GetForLoopIndexA())==null))then
    return true
    endif
    return false
    endfunction
    function Trig_Skyree_Reset_Func011Func001C takes nothing returns boolean
    if(not Trig_Skyree_Reset_Func011Func001Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Skyree_Reset_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(udg_Kurdran)
    call CreateNUnitsAtLoc(1,'Hmbr',Player(0),udg_TempPoint,GetUnitFacing(udg_Kurdran))
    call RemoveLocation(udg_TempPoint)
    call SetHeroXP(GetLastCreatedUnit(),GetHeroXP(udg_Kurdran),false)
    if(Trig_Skyree_Reset_Func005C())then
    call SelectHeroSkill(GetLastCreatedUnit(),'A051')
    call SetUnitAbilityLevelSwapped('A051',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A051',udg_Kurdran))
    else
    endif
    if(Trig_Skyree_Reset_Func006C())then
    call SelectHeroSkill(GetLastCreatedUnit(),'A05J')
    call SetUnitAbilityLevelSwapped('A05J',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A05J',udg_Kurdran))
    else
    endif
    if(Trig_Skyree_Reset_Func007C())then
    call SelectHeroSkill(GetLastCreatedUnit(),'A05L')
    call SetUnitAbilityLevelSwapped('A05L',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A05L',udg_Kurdran))
    else
    endif
    if(Trig_Skyree_Reset_Func008C())then
    call SelectHeroSkill(GetLastCreatedUnit(),'Arav')
    call SetUnitAbilityLevelSwapped('Arav',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('Arav',udg_Kurdran))
    else
    endif
    if(Trig_Skyree_Reset_Func009C())then
    call SelectHeroSkill(GetLastCreatedUnit(),'Aamk')
    call SetUnitAbilityLevelSwapped('Aamk',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('Aamk',udg_Kurdran))
    else
    endif
    call ModifyHeroSkillPoints(GetLastCreatedUnit(),bj_MODIFYMETHOD_SET,GetHeroSkillPoints(udg_Kurdran))
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Skyree_Reset_Func011Func001C())then
    call UnitAddItemByIdSwapped('vddl',udg_Kurdran)
    else
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set bj_forLoopBIndex=1
    set bj_forLoopBIndexEnd=6
    loop
    exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
    call UnitAddItemSwapped(UnitItemInSlotBJ(udg_Kurdran,GetForLoopIndexB()),GetLastCreatedUnit())
    set bj_forLoopBIndex=bj_forLoopBIndex+1
    endloop
    call RemoveUnit(udg_Kurdran)
    set udg_Kurdran=GetLastCreatedUnit()
    call TriggerRegisterUnitEvent(gg_trg_Rejuventation_Damage_Red,udg_Kurdran,EVENT_UNIT_DAMAGED)
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(udg_Kurdran,'vddl'),udg_Kurdran)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(udg_Kurdran,'vddl'),udg_Kurdran)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(udg_Kurdran,'vddl'),udg_Kurdran)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(udg_Kurdran,'vddl'),udg_Kurdran)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(udg_Kurdran,'vddl'),udg_Kurdran)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(udg_Kurdran,'vddl'),udg_Kurdran)
    call RemoveItem(GetLastRemovedItem())
    set udg_SkyreeOnOff=false
    endfunction
    function InitTrig_Skyree_Reset takes nothing returns nothing
    set gg_trg_Skyree_Reset=CreateTrigger()
    call TriggerAddAction(gg_trg_Skyree_Reset,function Trig_Skyree_Reset_Actions)
    endfunction