reach_planete();

show_debug_message(global.move)

if(!global.move){
	Perfect_Cooldown(3);
	//show_debug_message("STUCK");
	if(keyboard_check_pressed(vk_space)){
		Perfect_Timing_event();
		//show_debug_message("SPACE");
		defineNewTarget();
		basic_movement();
	}
}