if(sprite_index == SpritSheat_FuseExplose_1 || sprite_index == SpritSheat_FuseExplose_2 || sprite_index == SpritSheat_FuseExplose_3){
	Die();
}

if(sprite_index == decrochage_1){
	sprite_index = vaisseau_2;
	Perfect_Cooldown(global.MaxTime);
	global.shake = true;
}


if(sprite_index == decrochage_2){
	sprite_index = vaisseau_1;
	Perfect_Cooldown(global.MaxTime);
	global.shake = true;
}