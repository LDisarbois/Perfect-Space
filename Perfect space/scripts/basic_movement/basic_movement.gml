// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information

global.planetes = [pla_1, pla_2, pla_3, pla_4, pla_5, pla_6, pla_7, pla_8, pla_9];

global.xp = [xp_1, xp_2, xp_3, xp_4, xp_5, xp_6, xp_7, xp_8, xp_9];

global.cp = [cp_1, cp_2, cp_3, cp_4, cp_5, cp_6, cp_7, cp_8, cp_9];


global.pts = [earnpts_1, earnpts_2, earnpts_3, earnpts_4, earnpts_5, earnpts_6, earnpts_7, earnpts_8, earnpts_9];
global.target_pla = global.planetes[0];
global.index_target = 0;
global.nb_pla = 9;
global.move = true;

global.move_speed = 10;

// Select a new planete to reach
function defineNewTarget(){
	global.index_target = (global.index_target + 1)  % global.nb_pla;
	global.target_pla = global.planetes[global.index_target];
	
	var test = (global.index_target + global.TravelEarn) % global.nb_pla;
	
	timer.x = global.cp[test].x;	
	timer.y = global.cp[test].y;
	
	time_point.x = global.cp[test].x;	
	time_point.y = global.cp[test].y;
	
	
	txt_good.x = global.cp[test].x;	
	txt_good.y = global.cp[test].y - 50;
	
	txt_insane.x = global.cp[test].x;	
	txt_insane.y = global.cp[test].y - 50;
	
	txt_perfect.x = global.cp[test].x;	
	txt_perfect.y = global.cp[test].y - 50;
	
}


function basic_movement() 
{
	global.move = true;
	move_towards_point(global.target_pla.x, global.target_pla.y, global.move_speed);
	image_angle = point_direction(x, y, global.target_pla.x, global.target_pla.y);
}

function stop_movement(){
	stop_movement();
	
}

function shakeSprite(){

	if(global.isShake == true){
	global.timeShake -= delta_time/1000000;
		if(global.timeShake <=0 ){
			global.isShake = false ;
			global.timeShake = 1;
		}
	}
		
}

function reach_planete(){
	
	if(x < global.target_pla.x) {
		if(x + global.move_speed > global.target_pla.x){
			//	defineNewTarget();
			//	basic_movement();
			global.move = false;	
			speed = 0;
		}
	} else {
	if(x - global.move_speed < global.target_pla.x){
			// defineNewTarget();
			// basic_movement();
			global.move = false;
			speed = 0
		}
	}
	
	
}