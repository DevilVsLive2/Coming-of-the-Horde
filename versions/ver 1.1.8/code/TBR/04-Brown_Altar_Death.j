function Trig_Brown_Altar_Death_Conditions takes nothing returns boolean
if(not(GetUnitTypeId(GetDyingUnit())=='oalt'))then
return false
endif
return true
endfunction
function Trig_Brown_Altar_Death_Func001Func001Func002001002001 takes nothing returns boolean
return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
endfunction
function Trig_Brown_Altar_Death_Func001Func001Func002001002002 takes nothing returns boolean
return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
endfunction
function Trig_Brown_Altar_Death_Func001Func001Func002001002 takes nothing returns boolean
return GetBooleanAnd(Trig_Brown_Altar_Death_Func001Func001Func002001002001(),Trig_Brown_Altar_Death_Func001Func001Func002001002002())
endfunction
function Trig_Brown_Altar_Death_Func001Func001Func002A takes nothing returns nothing
call IssueTargetOrder(udg_BrownAltar[GetForLoopIndexA()],"revive",GetEnumUnit())
return
endfunction
function Trig_Brown_Altar_Death_Func001Func001C takes nothing returns boolean
if(not(IsUnitAliveBJ(udg_BrownAltar[GetForLoopIndexA()])==true))then
return false
endif
return true
endfunction
function Trig_Brown_Altar_Death_Func003001002001 takes nothing returns boolean
return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
endfunction
function Trig_Brown_Altar_Death_Func003001002002 takes nothing returns boolean
return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
endfunction
function Trig_Brown_Altar_Death_Func003001002 takes nothing returns boolean
return GetBooleanAnd(Trig_Brown_Altar_Death_Func003001002001(),Trig_Brown_Altar_Death_Func003001002002())
endfunction
function Trig_Brown_Altar_Death_Func003A takes nothing returns nothing
call IssueTargetOrder(gg_unit_oalt_0420,"revive",GetEnumUnit())
endfunction
function Trig_Brown_Altar_Death_Actions takes nothing returns nothing
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=5
loop
exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
if(Trig_Brown_Altar_Death_Func001Func001C())then
set bj_wantDestroyGroup=true
call ForGroupBJ(GetUnitsOfPlayerMatching(Player(11),Condition(function Trig_Brown_Altar_Death_Func001Func001Func002001002)),function Trig_Brown_Altar_Death_Func001Func001Func002A)
else
endif
set bj_forLoopAIndex=bj_forLoopAIndex+1
endloop
set bj_wantDestroyGroup=true
call ForGroupBJ(GetUnitsOfPlayerMatching(Player(11),Condition(function Trig_Brown_Altar_Death_Func003001002)),function Trig_Brown_Altar_Death_Func003A)
endfunction
function InitTrig_Brown_Altar_Death takes nothing returns nothing
set gg_trg_Brown_Altar_Death=CreateTrigger()
call DisableTrigger(gg_trg_Brown_Altar_Death)
call TriggerRegisterPlayerUnitEventSimple(gg_trg_Brown_Altar_Death,Player(11),EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(gg_trg_Brown_Altar_Death,Condition(function Trig_Brown_Altar_Death_Conditions))
call TriggerAddAction(gg_trg_Brown_Altar_Death,function Trig_Brown_Altar_Death_Actions)
endfunction