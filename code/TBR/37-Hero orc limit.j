globals
unit array UnitLimitHero
endglobals

function Trig_Hero_orc_limit_Actions takes nothing returns nothing
if not IsHeroUnitId(GetTrainedUnitType()) then
return
endif
call RemoveUnit(UnitLimitHero[GetPlayerId(GetTriggerPlayer())])
set UnitLimitHero[GetPlayerId(GetTriggerPlayer())] = null
endfunction

//===========================================================================
function InitTrig_Hero_orc_limit takes nothing returns nothing
    set gg_trg_Hero_orc_limit = CreateTrigger(  )
    call TriggerRegisterPlayerUnitEvent(gg_trg_Hero_orc_limit,Player(9),EVENT_PLAYER_UNIT_TRAIN_START, null)
    call TriggerRegisterPlayerUnitEvent(gg_trg_Hero_orc_limit,Player(10),EVENT_PLAYER_UNIT_TRAIN_START, null)
    call TriggerRegisterPlayerUnitEvent(gg_trg_Hero_orc_limit,Player(11),EVENT_PLAYER_UNIT_TRAIN_START, null)
    call TriggerAddAction( gg_trg_Hero_orc_limit, function Trig_Hero_orc_limit_Actions )
endfunction

