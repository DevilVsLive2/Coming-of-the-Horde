function Trig_Music_Beginning_Actions takes nothing returns nothing
set udg_MusicGroup=GetForceOfPlayer(GetTriggerPlayer())
call DisplayTimedTextToForce(udg_MusicGroup,2.50,"|cffffcc00Музыку нельзя использовать первые несколько секунд, что бы избежать десинхронизации.|r")
call DestroyForce(udg_MusicGroup)
endfunction

//===========================================================================
function InitTrig_Music_Beginning takes nothing returns nothing
    set gg_trg_Music_Beginning = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(0),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(1),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(2),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(3),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(4),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(5),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(6),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(7),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(8),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(9),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(10),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(11),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(0),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(1),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(2),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(3),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(4),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(5),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(6),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(7),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(8),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(9),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(10),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(11),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(0),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(1),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(2),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(3),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(4),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(5),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(6),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(7),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(8),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(9),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(10),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Beginning,Player(11),"-stop",true)
    call TriggerAddAction( gg_trg_Music_Beginning, function Trig_Music_Beginning_Actions )
endfunction

