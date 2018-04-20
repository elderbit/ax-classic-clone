sub EVENT_SPAWN {
    quest::settimer("atenha",2);
    my $x = $npc->GetX();
    my $y = $npc->GetY();
    # Set an extra large proximity so we get the player from way outside aggro radius.
    quest::set_proximity($x-245,$x+245,$y-245,$y+245);
}

sub EVENT_ENTER {
    quest::shout("You offend me $race");
    quest::shout("$name, you must engage me within 10 minutes or I will leave.");
    quest::settimer("FDatenha",600);
}

sub EVENT_COMBAT {
    quest::stoptimer("FDatenha");
}

sub EVENT_TIMER {
    if($timer eq "FDatenha") {
        quest::stoptimer("FDatenha");
        quest::stoptimer("atenha");
        quest::depop();
    }
    if($timer eq "atenha") {
        if(defined($qglobals{aten})) {
            quest::stoptimer("atenha");
            quest::stoptimer("FDatenha");
            quest::depop();
            $qglobals{aten} = undef;
        }
    }
}

sub EVENT_DEATH {
    quest::stoptimer("atenha");
    my $variance = int(rand(720));
    my $spawntime = 6480 + $variance;
    quest::setglobal("aten",1,3,"M$spawntime");
}
# #The_Fabled_Aten_Ha_Ra Destroy NPCID: 158308

