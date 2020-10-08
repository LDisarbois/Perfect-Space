// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information
function LifeEvent() 
{
	if(global.Life == 3){
		
	}
	if(global.Life == 2){
		
	}
	if(global.Life == 1){
		
	}
}

function LifeEventBadTiming() 
{
	if(global.Life == 3){
		obj_vaisseau.visible = false;
		inst = instance_create_layer(obj_vaisseau.x,obj_vaisseau.y,,Mort1);
		with(inst){
			inst.image_angle = obj_vaisseau.image_angle;
		}
		
	}
	if(global.Life == 2){
		draw_sprite(SpritSheat_FuseExplose_2,-1,obj_vaisseau.x,obj_vaisseau.y);
	}
	if(global.Life == 1){
		draw_sprite(SpritSheat_FuseExplose_3,-1,obj_vaisseau.x,obj_vaisseau.y);
	}
}