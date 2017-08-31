# #The_Fabled_Maid_Issis (59158)
# depopper script by patrikpatrik 05/05/2017
# Update 8/30/17 Timer stops if engaged and restarts on exit.

sub EVENT_SPAWN{
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
	
	$tempa = $npc->GetNPCTypeID();
	
	if ($tempa == 59158) {
		quest::settimer("fmaid", 600); #will remain for 10 minutes
	}
}

sub EVENT_COMBAT {
	if($npc->IsEngaged()) {
		quest::stoptimer($timer);
	} else {
		quest::settimer("fmaid", 600);
	}
}

sub EVENT_TIMER {
	if($timer eq "fmaid") {
		quest::depop();
	}
}