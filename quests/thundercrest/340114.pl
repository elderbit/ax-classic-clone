sub EVENT_SPAWN {
$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 20, $x + 20, $y - 20, $y + 20);
    }
	sub EVENT_ENTER {
	$mob->CameraEffect(3000, 6);
	$client->Message(14,"Something has come alive in a nearby room! Be warned!" );
	$client->Message(14,"The rumbling you just felt must have been a sentry that is fully automated! Judging by the magnitude of the power, it must be nearby. Search for this beast and destroy it before it has a chance to destroy you!"); 
	quest::depop();
	}
	