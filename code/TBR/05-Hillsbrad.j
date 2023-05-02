function Trig_Hillsbrad_Func003Func029001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Hillsbrad_Func003Func029001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Hillsbrad_Func003Func029001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Hillsbrad_Func003Func029001002001(),Trig_Hillsbrad_Func003Func029001002002())
    endfunction
    function Trig_Hillsbrad_Func003Func029A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00R_0492,"revive",GetEnumUnit())
    endfunction
    function Trig_Hillsbrad_Func003Func051002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Hillsbrad_Func003Func054002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Hillsbrad_Func003Func057002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Hillsbrad_Func003Func060002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Hillsbrad_Func003C takes nothing returns boolean
    if(not(udg_ThroneCount<8.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Hillsbrad_Actions takes nothing returns nothing
    set udg_ThroneCount=(udg_ThroneCount+1)
    if(Trig_Hillsbrad_Func003C())then
        call DisplayTextToForce(GetPlayersAllies(Player(0)), "Азерот был разграблен Пылающим Легионом!  Выжившие после этого злодеяния отплывают на север и разбивают лагерь в Хиллсбраде..")
        call DisplayTextToForce(GetPlayersAllies(Player(4)), "Мы захватили Азерот! Теперь давайте выйдем в море и уничтожим наших врагов на севере!")
    set udg_TempPoint=GetUnitLoc(gg_unit_n00R_0492)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[1],udg_TempPoint,10.00)
    call RemoveLocation(udg_TempPoint)
    call DisableTrigger(gg_trg_Azeroth_Main_Gate_Lever_Death)
    call DisableTrigger(gg_trg_Azeroth_Zepplin)
    call AdjustPlayerStateBJ(200,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(2500,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(2500,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(2500,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(2500,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call KillUnit(gg_unit_hvlt_0071)
    call KillUnit(gg_unit_hbar_0072)
    call KillUnit(gg_unit_hgra_0076)
    call KillUnit(gg_unit_hhou_0073)
    call KillUnit(gg_unit_hlum_0170)
    call KillUnit(gg_unit_h001_0121)
    call KillUnit(gg_unit_h001_0120)
    call KillUnit(gg_unit_h001_0119)
    call KillUnit(gg_unit_h001_0138)
    call KillUnit(gg_unit_oeye_0245)
    call ShowUnitShow(gg_unit_n00R_0492)
    call TriggerSleepAction(1.00)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(1),Condition(function Trig_Hillsbrad_Func003Func029001002)),function Trig_Hillsbrad_Func003Func029A)
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Fire_3)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Fire_4)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Fire_5)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Fire_6)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Fire_7)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call RemoveDestructable(gg_dest_B006_0025)
    call TriggerSleepAction(1.00)
    set udg_Temp_UnitGroup=GetUnitsInRectOfPlayer(gg_rct_Hillsbrad_Start,Player(4))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Hillsbrad_Func003Func051002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsInRectOfPlayer(gg_rct_Hillsbrad_Start,Player(9))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Hillsbrad_Func003Func054002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsInRectOfPlayer(gg_rct_Hillsbrad_Start,Player(10))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Hillsbrad_Func003Func057002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsInRectOfPlayer(gg_rct_Hillsbrad_Start,Player(11))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Hillsbrad_Func003Func060002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call EnableTrigger(gg_trg_Azeroth_Refuge)
    call ShowUnitShow(gg_unit_hbar_0139)
    call ReplaceUnitBJ(gg_unit_o008_0152,'hgra',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0145,'hlum',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0146,'hhou',bj_UNIT_STATE_METHOD_RELATIVE)
    call SetUnitInvulnerable(GetLastReplacedUnitBJ(),true)
    call ReplaceUnitBJ(gg_unit_o008_0148,'hvlt',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0140,'hgtw',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0150,'hctw',bj_UNIT_STATE_METHOD_RELATIVE)
    call TriggerSleepAction(8.00)
    call ReplaceUnitBJ(gg_unit_h00K_0597,'h004',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_h00N_0023,'hshy',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_h00N_0294,'hshy',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_h00N_0346,'hshy',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_e000_0282,'eshy',bj_UNIT_STATE_METHOD_RELATIVE)
    call ShowUnitShow(gg_unit_hshy_0141)
    call SetPlayerUnitAvailableBJ('hshy',true,Player(0))
    call SetPlayerUnitAvailableBJ('hshy',true,Player(1))
    call SetPlayerUnitAvailableBJ('h004',true,Player(2))
    call SetPlayerUnitAvailableBJ('eshy',true,Player(6))
    call SetPlayerUnitAvailableBJ('hshy',true,Player(7))
    call SetPlayerUnitAvailableBJ('hshy',true,Player(8))
    call SetPlayerTechMaxAllowedSwap('hshy',2,Player(0))
    call SetPlayerTechMaxAllowedSwap('hshy',2,Player(1))
    call SetPlayerTechMaxAllowedSwap('h004',3,Player(2))
    call SetPlayerTechMaxAllowedSwap('eshy',2,Player(6))
    call SetPlayerTechMaxAllowedSwap('hshy',2,Player(7))
    call SetPlayerTechMaxAllowedSwap('hshy',2,Player(8))
    call ShowUnitShow(gg_unit_ushp_0267)
    set udg_TempPoint=GetUnitLoc(gg_unit_ushp_0267)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[5],udg_TempPoint,10.00)
    call RemoveLocation(udg_TempPoint)
    call DisplayTimedTextToForce(bj_FORCE_PLAYER[5], 20.00, "Лордерон смог разработать корабли, так что мы можем их протестировать против нашествия флота Орды!")
    call SetPlayerTechMaxAllowedSwap('h020', 2, Player(5))
    call TriggerSleepAction(12.00)
    call DisableTrigger(gg_trg_Kul_Tiras_Zepplin_Early)
    call EnableTrigger(gg_trg_Kul_Tiras_Zepplin)
    call DisplayTextToForce(udg_Horde, "Тролли и Огры создали мощнейшие корабли с которыми мы сможем уничтожить весь жалкий флот людишек-собаченок!")
    call ReplaceUnitBJ(gg_unit_o008_0391,'nbt1',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0390,'nbt1',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0412,'nbt1',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0436,'nbt1',bj_UNIT_STATE_METHOD_RELATIVE)
    call SetPlayerUnitAvailableBJ('u000',true,Player(4))
    call SetPlayerUnitAvailableBJ('oshy',true,Player(9))
    call SetPlayerUnitAvailableBJ('oshy',true,Player(10))
    call SetPlayerUnitAvailableBJ('oshy',true,Player(11))
    call ReplaceUnitBJ(gg_unit_o008_0392,'oshy',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0393,'ojgn',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0395,'odes',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0394,'odes',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0396,'h00M',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0413,'oshy',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0415,'ojgn',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0416,'odes',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0417,'odes',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0414,'h00M',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0437,'oshy',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0438,'ojgn',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0440,'odes',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0439,'odes',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0441,'h00M',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0247,'u000',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0253,'o014',bj_UNIT_STATE_METHOD_RELATIVE)
    call ReplaceUnitBJ(gg_unit_o008_0252,'udes',bj_UNIT_STATE_METHOD_RELATIVE)
    else
    endif
    endfunction
    function InitTrig_Hillsbrad takes nothing returns nothing
    set gg_trg_Hillsbrad=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Hillsbrad,gg_unit_negm_0075,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Hillsbrad,function Trig_Hillsbrad_Actions)
    endfunction