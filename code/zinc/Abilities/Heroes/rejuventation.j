library RejuventationSpell requires CothUtilities {

  hashtable rejuventationData = InitHashtable();

  function clearRejuventationDataForCaster(unit caster) {
    integer casterId = GetHandleId(caster);
    effect yellowBall = LoadEffectHandle(rejuventationData, casterId, 0);
    effect greenBall = LoadEffectHandle(rejuventationData, casterId, 1);
    timer healTimer = LoadTimerHandle(rejuventationData, casterId, 2);
    trigger onCasterDamaged = LoadTriggerHandle(rejuventationData, casterId, 3);

    DestroyEffect(yellowBall);
    DestroyEffect(greenBall);
    FlushChildHashtable(rejuventationData, GetHandleId(healTimer));
    DestroyTimer(healTimer);
    TriggerClearConditions(onCasterDamaged);
    DestroyTrigger(onCasterDamaged);
    FlushChildHashtable(rejuventationData, casterId);
  }

  function onInit()  -> nothing {
    trigger onRejuvSpellEffect = CreateTrigger();
    trigger onRejuvSpellEndcast = CreateTrigger();
    trigger onRejuvInterrupt = CreateTrigger();

    TriggerRegisterAnyUnitEventBJ(onRejuvSpellEffect, EVENT_PLAYER_UNIT_SPELL_EFFECT);
    TriggerAddCondition(onRejuvSpellEffect, Filter(function() -> boolean [
      return GetSpellAbilityId() == 'AEsf';
    ]));
    TriggerAddAction(onRejuvSpellEffect, (){
      unit caster = GetTriggerUnit();
      integer casterId = GetHandleId(caster);
      effect yellowBall = LoadEffectHandle(rejuventationData, casterId, 0);
      
      clearRejuventationDataForCaster(caster);

      yellowBall = AddSpecialEffectTarget("RejuvTarget.mdx", caster, "overhead");
      SaveEffectHandle(rejuventationData, casterId, 0, yellowBall);

      onCasterDamaged = CreateTrigger();
      TriggerRegisterUnitEvent(onCasterDamaged, caster, EVENT_UNIT_DAMAGED);
      TriggerAddCondition(onCasterDamaged, Filter(() -> boolean {
        IssueImmediateOrder(caster, "stop");
        return true;
      }));
      caster = null;
      yellowBall = null;
    });

    TriggerRegisterAnyUnitEventBJ(onRejuvSpellEndcast, EVENT_PLAYER_UNIT_SPELL_FINISH);
    TriggerAddAction(onRejuvSpellEndcast, (){
      unit caster = GetTriggerUnit();
      integer casterId = GetHandleId(caster);
      effect greenBall = LoadEffectHandle(rejuventationData, casterId, 1);
      timer healTimer = LoadTimerHandle(rejuventationData, casterId, 2);
      trigger onCasterDamaged = LoadTriggerHandle(rejuventationData, casterId, 3);

      clearRejuventationDataForCaster(caster);

      greenBall = AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Tranquility\\TranquilityTarget.mdl", caster, "overhead");
      SaveEffectHandle(rejuventationData, casterId, 1, greenBall);
      onCasterDamaged = CreateTrigger();
      TriggerRegisterUnitEvent(onCasterDamaged, caster, EVENT_UNIT_DAMAGED);
      TriggerAddCondition(onCasterDamaged, Filter(() -> boolean {
        clearRejuventationDataForCaster(caster);
        return true;
      }));

      healTimer = CreateTimer();
      SaveUnitHandle(rejuventationData, GetHandleId(healTimer), 0, caster);
      SaveInteger(rejuventationData, GetHandleId(healTimer), 0, 1);
      TimerStart(healTimer, 2, true, (){
        unit caster = LoadUnitHandle(rejuventationData, GetHandleId(GetExpiredTimer()), 0);
        integer healNumber = LoadInteger(rejuventationData, GetHandleId(GetExpiredTimer()), 0);
        healNumber++;
        SaveInteger(rejuventationData, GetHandleId(GetExpiredTimer()), 0, healNumber);
        AddUnitLifePercent(caster, 4 + healNumber);
        if (healNumber >= 12) {
          clearRejuventationDataForCaster(caster);
        }
        caster = null;
      });
      onCasterDamaged = null;
      healTimer = null;
      greenBall = null;
      caster = null;
    });

    TriggerRegisterAnyUnitEventBJ(onRejuvInterrupt, EVENT_PLAYER_UNIT_SPELL_ENDCAST);
    TriggerAddCondition(onRejuvInterrupt, Filter( ( ) -> boolean {
      return GetSpellAbilityId() == 'AEsf';
    }));
    TriggerAddAction(onRejuvInterrupt, (){
      clearRejuventationDataForCaster(GetTriggerUnit());
    })
  }
}