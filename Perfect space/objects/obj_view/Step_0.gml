dx = random_range(-shake,shake);
dy = random_range(-shake,shake); 
shakeSprite();
if(global.isShake == true){
camera_set_view_pos(view_camera[0],dx,dy);
}