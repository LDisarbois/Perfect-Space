reach_planete();

if(!global.move){

	if(global.TravelEarn > 0){
	
		Earn_Score();
	
		defineNewTarget();
		basic_movement();
		global.TravelEarn--;
	
	} else {

		Perfect_Cooldown(3);
	
		if(keyboard_check_pressed(vk_space)){
			Perfect_Timing_event();
			resetTime();
		
			if(global.TravelEarn = -1){
				Perfect_Cooldown(3);
			} else {
				defineNewTarget();
				basic_movement();
			}		
		}
	}
}


