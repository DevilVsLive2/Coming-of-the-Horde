globals
    force debugForce = CreateForce()
endglobals
function Trig_Debug_Actions takes nothing returns nothing
if (IsPlayerInForce(GetTriggerPlayer(), debugForce)) then
    call ForceRemovePlayer(debugForce, GetTriggerPlayer())
    call DisplayTimedTextToForce(debugForce, 10, "Игрок, " + GetPlayerName(GetTriggerPlayer()) + " вышел из дебаг-группы")
    return
endif

call ForceAddPlayer(debugForce, GetTriggerPlayer())
call DisplayTimedTextToForce(debugForce, 10, "Игрок, " + GetPlayerName(GetTriggerPlayer()) + " вошёл в дебаг-группу")
endfunction

//===========================================================================
function InitTrig_Debug takes nothing returns nothing
    set gg_trg_Debug = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(0), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(1), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(2), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(3), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(4), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(5), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(6), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(7), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(8), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(9), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(10), "-debugenter", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Debug, Player(11), "-debugenter", true)
    call TriggerAddAction( gg_trg_Debug, function Trig_Debug_Actions )
endfunction

