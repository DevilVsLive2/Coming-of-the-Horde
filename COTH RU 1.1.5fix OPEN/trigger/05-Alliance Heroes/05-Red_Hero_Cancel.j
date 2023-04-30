function Trig_Red_Hero_Cancel_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hdgo',1,Player(0))
    call SetPlayerTechMaxAllowedSwap('Huth',1,Player(0))
    call SetPlayerTechMaxAllowedSwap('H01I',1,Player(0))
    call SetPlayerTechMaxAllowedSwap('Hmbr',1,Player(0))
    endfunction
    function InitTrig_Red_Hero_Cancel takes nothing returns nothing
    set gg_trg_Red_Hero_Cancel=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Red_Hero_Cancel,gg_unit_n00O_0016,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerRegisterUnitEvent(gg_trg_Red_Hero_Cancel,gg_unit_n00P_0020,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerAddAction(gg_trg_Red_Hero_Cancel,function Trig_Red_Hero_Cancel_Actions)
    endfunction