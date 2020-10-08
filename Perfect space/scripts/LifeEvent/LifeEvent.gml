// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information
function LifeEvent() 
{
	if(global.Life == 2){
		
	}
	if(global.Life == 1){
		
	}
}

function LifeEventBadTiming() 
{
	if(global.Life == 3){
		obj_vaisseau.sprite_index = SpritSheat_FuseExplose_1;
	}
	if(global.Life == 2){
		obj_vaisseau.sprite_index = SpritSheat_FuseExplose_2;
	}
	if(global.Life <= 1){
		obj_vaisseau.sprite_index = SpritSheat_FuseExplose_3;
	}
}

function LifeDecrease(){
	if(global.Life == 2){
		obj_vaisseau.sprite_index = decrochage_1;
	}
	if(global.Life == 1){
		obj_vaisseau.sprite_index = decrochage_2;		
	}
}