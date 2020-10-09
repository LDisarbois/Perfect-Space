// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information

global.MaxTime = 3;
global.second = 3;
global.Life = 3;
global.goodPercent = 25/100;
global.PerfectPercent = 13/100;
global.InsanePercent = 5/100;
global.Score = 0;

global.ScoreDisplay = 0;

global.TravelEarn = 0;

global.result = 0;


math_set_epsilon(6);


function SetmaxLife(MaxLife) 
{
	global.Life = MaxLife;
}

function Die(){
		audio_play_sound(Tmort,0,false);
		
		room_goto(Mort)
}

function resetTime(){
	if(global.Score >= 4500) {
		global.MaxTime = 0.5;
	} else if(global.Score >= 3500) {
		global.MaxTime = 0.8;
	}else if(global.Score >= 2800) {
		global.MaxTime = 1;
	}else if(global.Score >= 2000) {
		global.MaxTime = 1.5;
	}else if(global.Score >= 1400) {
		global.MaxTime = 2;
	} else if (global.Score >= 900){
		global.MaxTime = 2.5;
	} else if (global.Score >= 500){
		global.MaxTime = 2.8;
	} else {
		global.MaxTime = 3;
	}
	
	global.second = global.MaxTime;
	
	Timer_point.image_angle = 0;
}

function MinusLife()
{
	global.Life --;
	
	LifeDecrease();
	
	if(global.Life == 0){
		LifeEventBadTiming();
	}
}

function Perfect_Timing_event()
{
	timing = global.second;
	
	if(timing < global.MaxTime*global.goodPercent && timing > global.MaxTime*global.PerfectPercent){
		Earn_Score();
		
		
		txt_good.visible = true;

		global.result = 1;
		global.TravelEarn = 0;
	}
	else if(timing < global.MaxTime*global.PerfectPercent && timing > global.MaxTime*global.InsanePercent){
		audio_play_sound(Perfect,0,false);
		Earn_Score();
		
		txt_perfect.visible = true;
		
		global.result = 2;
		global.TravelEarn = 1;
	}
	else if(timing < global.MaxTime*global.InsanePercent){
		audio_play_sound(Insane,0,false);
		Earn_Score();
		
		txt_insane.visible = true;

		global.result = 3;
		global.TravelEarn = 2;
	}
	else if(timing > global.MaxTime*global.goodPercent){
		MinusLife();

		global.TravelEarn = -1;
	}
}

function Earn_Score(){
	global.pts[global.index_target].visible = true;
	global.pts[global.index_target].image_speed = 0.8;
	
	global.xp[global.index_target].visible = true;
	global.xp[global.index_target].direction = point_direction(global.xp[global.index_target].x, global.xp[global.index_target].y, TXT_Score.x, TXT_Score.y + 25);
	global.xp[global.index_target].speed = 15;
	
	audio_play_sound(meteorite3,1,0);
	
	global.Score += 100;
}

function Perfect_Cooldown(Time)
{
	global.TravelEarn = 0;
	// global.MaxTime = Time;
	
	if(global.second >= 0)
	{
		global.second = global.second - delta_time/1000000 ;
		Timer_point.image_angle += ((1/1000000)*360)/global.MaxTime * delta_time;
		angle = Timer_point.image_angle;
		if(global.second <= global.MaxTime*global.PerfectPercent) 
		{
				Timer_point.sprite_index = interface_point_Blue	;
				Timer_point.image_angle = angle;
		}
		if(global.second >= global.MaxTime*global.PerfectPercent) 
		{
				Timer_point.sprite_index = interface_point	;
		}
		if(global.Score == 0 && global.second <= global.MaxTime*global.goodPercent){
			spaceIndice.visible = true;
		}
		
	}else{
		//tu meurt batard
		LifeEventBadTiming();
	}
}
	


