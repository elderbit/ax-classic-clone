sub EVENT_SPAWN {
quest::set_proximity($x-30,$x+30,$y-30,$y+30);
}
sub EVENT_ENTER {
  quest::emote("points off into the distance.");
  quest::say("The color of the walls is maddening; an unclean beige, strangely faded by time. I can see a formless figure skulking behind the designs. See her, there!");
}
sub EVENT_SAY {
  if ($text=~/awaken me from this nightmare/i) {
  quest::settimer(1,3);
  quest::setglobal("exile_ra",1,1,"M2");
  }
}
sub EVENT_TIMER {
  quest::stoptimer();
if (($qglobals{exile_ir} == 1) && ($qglobals{exile_co} == 1) && ($qglobals{exile_ra} == 1) && ($qglobals{exile_in} == 1)) {  
    quest::emote("blinks and a spark of sanity returns.");
    quest::say("Ah, wha . . . what? How strange. I can see clearly now.");
    quest::say("Thank you for restoring our clarity. Something in this cursed place had stolen away my sanity, and I will not allow it to happen again. Death would be preferable to that endless madness. Be warned, the gateway to the lower reaches of this temple will be unsealed soon. Leave this place before you become mad yourselves!");
    }
  else {
  quest::spawn2(296044,0,0,$x+5,$y,$z,$h);
  quest::spawn2(296044,0,0,$x+5,$y-10,$z,$h);
  quest::spawn2(296044,0,0,$x+5,$y-15,$z,$h);
  quest::spawn2(296044,0,0,$x-5,$y-20,$z,$h);
  quest::spawn2(296044,0,0,$x-5,$y-25,$z,$h);
  quest::spawn2(296044,0,0,$x,$y-30,$z,$h);
  quest::spawn2(296044,0,0,$x+5,$y-30,$z,$h);
  quest::spawn2(296044,0,0,$x+5,$y-55,$z,$h);
  quest::spawn2(296044,0,0,$x,$y-40,$z,$h);
  quest::spawn2(296044,0,0,$x+5,$y-35,$z,$h);
}
}