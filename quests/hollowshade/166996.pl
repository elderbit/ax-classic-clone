sub EVENT_SPAWN{
  quest::signalwith(166968,810,0);
  quest::signalwith(166969,811,0);
  quest::signalwith(166990,6016,0);
}
sub EVENT_DEATH{
    quest::signalwith(166582,534,250000);
}