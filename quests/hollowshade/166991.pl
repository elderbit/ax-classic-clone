##South Village Delay respawn check against Grimlings##
sub EVENT_SIGNAL{
if ($signal == 7001) {
   quest::settimer("delay_grimlings_south_village_timer",300);
  }
if($signal == 7002){
   quest::depop(166177);
  }
if($signal == 7003){
   quest::depop(166777);
  }
if($signal == 7004){
   quest::depop(166829);
	}
if($signal == 7005){
   quest::depop(166830);
	}
if($signal == 7006){
   quest::depop(166831);
  }
if($signal == 7007){
   quest::depop(166832);
	}
if($signal == 7008){   
   quest::depop(166833);
	}
if($signal == 7009){   
   quest::depop(166834);
	}
if($signal == 7010){   
   quest::depop(166835);
	}
if($signal == 7011){   
   quest::depop(166836);
	}
if($signal == 7012){   
   quest::depop(166837);
  }
if($signal == 7013){
   quest::depop(166838);
  }
if($signal == 7014){
   quest::depop(166839);
  }
if($signal == 7015){
   quest::depop(166840);
  }
if($signal == 7016){
   quest::depop(166841);
  }
if($signal == 7017){
   quest::depop(166842);
  }
if($signal == 7018){
   quest::depop(166843);
  }
if($signal == 7019){
   quest::depop(166844);
  }
if($signal == 7020){
   quest::depop(166845);
  }
if($signal == 7021){
   quest::depop(166846);
  }
if($signal == 7022){
   quest::depop(166847);
  }
if($signal == 7023){
   quest::depop(166848);
  }
if($signal == 7024){
   quest::depop(166849);
  }
if($signal == 7025){
   quest::depop(166850);
  }
if($signal == 7026){
   quest::depop(166851);
	}
if($signal == 7027){
   quest::depop(166852);
  }
if($signal == 7028){
   quest::depop(166853);
	}
if($signal == 7029){
   quest::depop(166854);
  }
if($signal == 7030){
   quest::depop(166855);
  }
if($signal == 7031){
   quest::depop(166856);
  }
if($signal == 7032){
   quest::depop(166857);
  }
if($signal == 7033){
   quest::depop(166858);
  }
if($signal == 7034){
   quest::depop(166859);
  }
if($signal == 7035){
   quest::depop(166860);
  }
if($signal == 7036){
   quest::depop(166861);
  }
if($signal == 7037){
   quest::depop(166862);
  }
if($signal == 7038){
   quest::depop(166863);
  }
if($signal == 7039){
   quest::depop(166864);
  }
if($signal == 7040){
   quest::depop(166865);
  }
if($signal == 7041){
   quest::depop(166175);
  }
if($signal == 7042){
   quest::depop(166170);
  }
if($signal == 3043){
   quest::depop(166210);
  }
if($signal == 7044){
   quest::depop(166209);
  }
}
 sub EVENT_TIMER{
 if($timer eq "delay_grimlings_south_village_timer"){
     quest::stoptimer("delay_grimlings_south_village_timer");
   quest::depop();
   }
 }  