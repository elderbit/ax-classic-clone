## Corny_Scarecrow 14194 South Karana ##
sub EVENT_SAY {
 my $wild = quest::saylink("wild", 1);
 my $kernels = quest::saylink("kernels", 1);
  
   if($text =~ /Hail/i && defined $qglobals{"Thanksscarecrow"} == 1) {
   quest::say("Hello $name. It is a good thing you found me--I was carried off by those $wild turkeys]. I am still trying to find my way home.");
   }
   elsif($text =~ /Hail/i && defined $qglobals{"Thanksdead"} == 1) {
   quest::say("Little tougher than you thought eh? Well return to Chet Miller in West Karana and see if he can spare a bit more corn and I will call the Wild Turkeys again.");
   }
   elsif($text =~ /Hail/i && defined $qglobals{"Thanksreturn"} == 1) {
   quest::say("I see you got a few more $kernels, give them to me and I will call the turkeys again.");
   }
   elsif($text =~ /wild/i && defined $qglobals{"Thanksscarecrow"} == 1) {
   quest::say("You seek wild turkeys? If you give me some corn I will call them in for you--but be careful, they are a dangerous lot!");
   quest::say("After you clean up the mess perhaps you could give me directions on how to get home?");
   }
   elsif($text =~ /kernels/i && defined $qglobals{"Thanksreturn"} == 1) {
   quest::say("Give me some corn I will call them in for you!");
   }
   elsif($text =~ /Hail/i && defined $qglobals{"Thankswild"} == 1) {
   quest::say ("Thank you $name for the directions. I can find my way home to Lady Einarr now and return to guarding her fields.");
   quest::setglobal("Thankssmglumr", 1, 5, "F");
   quest::depop();
   }
	else {
	quest::say("Do I know you? I dont talk to strangers.");
    }
 }	
sub EVENT_ITEM {
   if ($itemcount{120331} == 1 && $ulevel <= 5 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14222,603,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 5 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14222,603,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 10  && $ulevel >= 6 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14223,613,100);
   }
   elsif ($itemcount{120331} == 1  && $ulevel <= 10  && $ulevel >= 6 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14223,613,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 15  && $ulevel >= 11 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14224,623,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 15  && $ulevel >= 11 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14224,623,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 20  && $ulevel >= 16 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14225,633,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 20  && $ulevel >= 16 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14225,633,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 25  && $ulevel >= 21 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14226,643,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 25  && $ulevel >= 21 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14226,643,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 30  && $ulevel >= 26 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14227,653,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 30  && $ulevel >= 26 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14227,653,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 35  && $ulevel >= 31 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14228,663,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 35  && $ulevel >= 31 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14228,663,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 40  && $ulevel >= 36 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14229,673,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 40  && $ulevel >= 36 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14229,673,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 45  && $ulevel >= 41 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14230,683,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 45  && $ulevel >= 41 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14230,683,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 50  && $ulevel >= 46 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14231,693,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 50  && $ulevel >= 46 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14231,693,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 55  && $ulevel >= 51 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14232,703,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 55  && $ulevel >= 515 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14232,703,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 60  && $ulevel >= 56 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14233,713,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel <= 60  && $ulevel >= 56 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14233,713,100)
   }
   elsif ($itemcount{120331} == 1 && $ulevel >= 61 && defined $qglobals{"Thanksscarecrow"} == 1) { 
   quest::say("Okay, $name. Watch how quickly these wild turkeys come after this corn!");
   quest::signalwith(14234,723,100);
   }
   elsif ($itemcount{120331} == 1 && $ulevel >= 61 && defined $qglobals{"Thanksreturn"} == 1) { 
   quest::say("Okay $name be ready this time!");
   quest::delglobal("Thanksreturn");
   quest::signalwith(14234,723,100);
   }
   }

 
