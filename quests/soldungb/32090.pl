sub EVENT_SPAWN {
  my $a = quest::ChooseRandom(32089,32069,32075,32089,32089,32089,32069,32089,32089);
  quest::spawn2($a,12,0,-155,-725.1,-91,223);
  }
  sub EVENT_SIGNAL {
  if ($signal == 633){
  quest::depop(32089);
  quest::depop(32069);
  quest::depop(32075);
  quest::depop();
  }
  }