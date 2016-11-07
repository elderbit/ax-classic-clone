sub EVENT_SAY {
my $work = quest::saylink("work", 1);
    if($text=~/Hail/i){
     quest::say("Good day friend! I'm glad you've stopped by. I am in need of some assistance. Please direct anyone seeking $work to me.");
     }
    if($text=~/work/i){
     quest::say("I am sorry I must first see your Acrylica Slate. By order of the king, no one may help anyone other than citizens of Shar Vahl. With out proof of citizenship, I could be drawn and quartered just for talking to you.");
     }
}
sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 2877 =>1 )) {
     quest::say("Excellent! I practice the art of alchemy and I am currently working on some new recipes. I require a few special ingredients. Fortunately they grow in the crater just outside our city walls. Bring me a redcapped mushroom. a pinch of scarlet moss and a bluecapped mushroom. I'll be most grateful.");
     quest::summonitem(2877);
     quest::exp(500);
     quest::faction(132,10 );
     quest::faction(175,1);
     quest::faction(2806,1);
     }
    elsif (plugin::check_handin(\%itemcount, 3446 =>1, 3447 =>1, 3448 =>1 )) {
     quest::say("Wonderful! I have little to offer you for your trouble aside from my gratitude. Here is a pinch of acrylia dust. I know it's not much. If you have no need for it go to Mignah, he can always use all kinds of acrylia.");
     quest::summonitem(3449);
     quest::exp(1000);
     quest::faction(132,10 );
     quest::faction(175,1);
     quest::faction(2806,1);
     }
}
#END of FILE Zone:sharvahl  ID:155080 -- Dronqam_Runghi 

