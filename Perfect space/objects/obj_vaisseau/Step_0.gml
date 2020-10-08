reach_planete();


show_debug_message(global.move)

if(!global.move){
	show_debug_message("STUCK");
	if(keyboard_check_pressed(vk_space)){
		show_debug_message("SPACE");
		defineNewTarget();
		basic_movement();
	}
}