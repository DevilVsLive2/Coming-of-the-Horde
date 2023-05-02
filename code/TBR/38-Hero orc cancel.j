function Trig_Hero_orc_cancel_Actions takes nothing returns nothing
if not IsHeroUnitId(GetTrainedUnitType()) then
return
endif
set UnitLimitHero[GetPlayerId(GetTriggerPlayer())] = CreateUnit(GetTriggerPlayer(), 'ostr', -15500, -15500, 0)
endfunction

//===========================================================================
function InitTrig_Hero_orc_cancel takes nothing returns nothing
    set gg_trg_Hero_orc_cancel = CreateTrigger(  )
    call TriggerRegisterPlayerUnitEvent(gg_trg_Hero_orc_cancel,Player(9),EVENT_PLAYER_UNIT_TRAIN_CANCEL, null)
    call TriggerRegisterPlayerUnitEvent(gg_trg_Hero_orc_cancel,Player(10),EVENT_PLAYER_UNIT_TRAIN_CANCEL, null)
    call TriggerRegisterPlayerUnitEvent(gg_trg_Hero_orc_cancel,Player(11),EVENT_PLAYER_UNIT_TRAIN_CANCEL, null)
    call TriggerAddAction( gg_trg_Hero_orc_cancel, function Trig_Hero_orc_cancel_Actions )
endfunction

