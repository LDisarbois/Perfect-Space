dx = random_range(-shake,shake);
dy = random_range(-shake,shake); 
shakeSprite();
if(global.isShake == true){
camera_set_view_pos(view_camera[0],dx,dy);
}



if(keyboard_check_pressed(vk_escape)){
	game_end();
}