sub EVENT_SPAWN {
 $x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 75, $x + 75, $y - 75, $y + 75);
	}
sub EVENT_ENTER {
    quest::shout("I see you $name! Nothing but death awaits you here!");
      quest::signalwith(166962,407,0);
  }

sub EVENT_DEATH{
quest::signalwith(166798,607,0); #Boss_Dead_Owlbears
quest::signalwith(166799,15,0);
}

