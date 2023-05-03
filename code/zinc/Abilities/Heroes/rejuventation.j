library RejuventationSpell initializer onInit requires CothUtilities
  globals
    private hashtable rejuventationData = InitHashtable()
    public
  endglobals

  private function onRejuvCast takes nothing returns nothing
    rejuventationData
  endfunction

  private function onInit takes nothing returns nothing
    local trigger onRejuventationEffect = CreateTrigger()
    local trigger onRejuventationEndcast = CreateTrigger()
    local trigger onRejuventationStopCast = CreateTrigger()

    TriggerRegisterAnyUnitEventBJ(onRejuventationEffect, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(onRejuventationEffect, Filter(function isCastRejuventation))
    TriggerAddAction(onRejuventationEffect, onRejuvCast)
  endfunction
endlibrary