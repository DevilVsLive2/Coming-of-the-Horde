function Trig_Righteous_Fury_Finish_1_Actions takes nothing returns nothing
    call UnitRemoveAbilityBJ('A006',gg_unit_Harf_0501)
    call UnitRemoveBuffBJ('B024',gg_unit_Harf_0501)
    set udg_RighteousFury=0.00
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Righteous_Fury_Attack)
    endfunction
    function InitTrig_Righteous_Fury_Finish_1 takes nothing returns nothing
    set gg_trg_Righteous_Fury_Finish_1=CreateTrigger()
    call DisableTrigger(gg_trg_Righteous_Fury_Finish_1)
    call TriggerRegisterVariableEvent(gg_trg_Righteous_Fury_Finish_1,"udg_RighteousFury",EQUAL,2.00)
    call TriggerAddAction(gg_trg_Righteous_Fury_Finish_1,function Trig_Righteous_Fury_Finish_1_Actions)
    endfunction