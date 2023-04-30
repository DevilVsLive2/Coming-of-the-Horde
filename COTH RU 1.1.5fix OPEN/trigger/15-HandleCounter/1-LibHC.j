//TESH.scrollpos=12
//TESH.alwaysfold=0
library HC initializer init
    globals
    private leaderboard HB
    endglobals
    private function HCU takes nothing returns nothing
        local integer i = 0
        local integer id
        local location array P
        local real result = 0
        loop
            exitwhen i >= 50
            set i = i+1
            set P[i] = Location(0,0)
            set id = GetHandleId(P[i])
            set result = result+(id-0x100000)
        endloop
        set result = result/i-i/2
        loop
            call RemoveLocation(P[i])
            set P[i] = null
            exitwhen i <= 1
            set i = i-1
        endloop
        call LeaderboardSetItemValue(HB,0,R2I(result))
    endfunction

    private function HCA takes nothing returns nothing
        set HB = CreateLeaderboard()
        call LeaderboardSetLabel(HB,"Handle Counter")
        call PlayerSetLeaderboard(GetLocalPlayer(),HB)
        call LeaderboardDisplay(HB,true)
        call LeaderboardAddItem(HB,"Handles",0,Player(0))
        call LeaderboardSetSizeByItemCount(HB,1)
        call HCU()
        call TimerStart(GetExpiredTimer(),.05,true,function HCU)
    endfunction

    private function init takes nothing returns nothing
        debug call TimerStart(CreateTimer(),0,false,function HCA)
    endfunction
endlibrary

