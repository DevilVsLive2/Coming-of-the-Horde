function Trig_Red_Hero_Begin_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hdgo',0,Player(0))
    call SetPlayerTechMaxAllowedSwap('Huth',0,Player(0))
    call SetPlayerTechMaxAllowedSwap('H01I',0,Player(0))
    call SetPlayerTechMaxAllowedSwap('Hmbr',0,Player(0))
    endfunction
    function InitTrig_Red_Hero_Begin takes nothing returns nothing
    set gg_trg_Red_Hero_Begin=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Red_Hero_Begin,gg_unit_n00O_0016,EVENT_UNIT_TRAIN_START)
    call TriggerRegisterUnitEvent(gg_trg_Red_Hero_Begin,gg_unit_n00P_0020,EVENT_UNIT_TRAIN_START)
    call TriggerAddAction(gg_trg_Red_Hero_Begin,function Trig_Red_Hero_Begin_Actions)
    endfunction