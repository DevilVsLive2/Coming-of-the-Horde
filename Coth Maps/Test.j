//! zinc
  library Test {

    function Kill ()  -> nothing {
      KillUnit(GetEnumUnit());
    }

    function DIsplay ()  -> nothing {

      real y, k;
      real m = 2;
      real i;
      real j;
      y = 10;
      i = -y;

      while (i != y) {

        j = -y;

        while (j != y) {

          k = ((i * m) / y) * ((i * m) / y) + (j/y)*(j/y);

          if (k > 0.95 && k < 1.08) {
            CreateUnitAtLoc(Player(0), 'hfoo', Location(k, k), 0);
          }

          j += 1;
        }

        i += 1;
      }


      /*
      location EndLoc = PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 500, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc()));
      location MaxLeft = PolarProjectionBJ(EndLoc, 150, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), EndLoc) - 90);
      location MaxRight = PolarProjectionBJ(EndLoc, 150, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), EndLoc) + 90);

      location BottomRight = PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 150, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc()) + 90);
      location TopLeft = PolarProjectionBJ(
      PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 150, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc()) - 90),
      750, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc())
      );
      rect R = Rect(GetLocationX(BottomRight), GetLocationY(BottomRight), GetLocationX(TopLeft), GetLocationY(TopLeft));
      group g = CreateGroup();
      integer index;
      GroupEnumUnitsInRect(g, R, null);

      ForGroup(g, function Kill);
      CreateUnitAtLoc(Player(0), 'hfoo', EndLoc, 0);

      

      
      location A = GetUnitLoc(GetTriggerUnit());
      location Polar = PolarProjectionBJ(A, 800, AngleBetweenPoints(A, GetSpellTargetLoc()));
      location B = Location( GetLocationX(Polar) - 300, GetLocationY(Polar) );
      location C = Location( GetLocationX(Polar) + 300, GetLocationY(Polar) );

      group g = CreateGroup();
      unit u;
      location TestLoc;
      
      real First;
      real Second;
      real Third;
      GroupEnumUnitsInRangeOfLoc(g, GetSpellTargetLoc(), 1000, null);

      while (FirstOfGroup(g) != null) {
        u = FirstOfGroup(g);
        TestLoc = GetUnitLoc(u);
        First = ( GetLocationX(A) - GetLocationX(TestLoc) ) * ( GetLocationY(B) - GetLocationY(A) ) - 
        ( GetLocationX(B) - GetLocationX(A) ) * ( GetLocationY(A) - GetLocationY(TestLoc) );
        Second = ( GetLocationX(B) - GetLocationX(TestLoc) ) * ( GetLocationY(C) - GetLocationY(B) ) -
        ( GetLocationX(C) - GetLocationX(B) ) * ( GetLocationY(B) - GetLocationY(TestLoc) );
        Third = ( GetLocationX(C) - GetLocationX(TestLoc) ) * ( GetLocationY(A) - GetLocationY(C) ) -
        ( GetLocationX(A) - GetLocationX(C) ) * ( GetLocationY(C) - GetLocationY(TestLoc) );

        if ( ( First <= 0 && Second <= 0 && Third <= 0 ) || ( First >= 0 && Second >= 0 && Third >= 0 ) ) {
          UnitDamageTarget(GetTriggerUnit(), u, 300, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS);
        } else BJDebugMsg("не принадлежит");

        GroupRemoveUnit(g, u);
      }

      BJDebugMsg("первый инт: " + R2S(First));
      BJDebugMsg("второй " + R2S(Second));
      BJDebugMsg("третий " + R2S(Third));
      */
    }
    
    function onInit ()  -> nothing {
      trigger t = CreateTrigger();

      TriggerRegisterPlayerUnitEvent(t, Player(0), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function DIsplay);
      
    }
  }
//! endzinc