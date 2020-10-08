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

global.TravelEarn = 0;


math_set_epsilon(6);


function SetmaxLife(MaxLife) 
{
	global.Life = MaxLife;
}

function Die(){
		room_goto(Mort)
}

function resetTime(){
	if(global.Score >= 3500) {
		global.MaxTime = 0.5;
	} else if(global.Score >= 2500) {
		global.MaxTime = 0.7;
	} else if (global.Score >= 1500){
		global.MaxTime = 1;
	} else if (global.Score >= 500){
		global.MaxTime = 2;
	} else {
		global.MaxTime = 3;
	}
	
	global.second = global.MaxTime;
	
	Timer_point.image_angle = 0;
}

function MinusLife()
{
	global.Life --;
	
	if(global.Life == 0){
		Die();
	}
}

function Perfect_Timing_event()
{
	timing = global.second;
	
	if(timing < global.MaxTime*global.goodPercent && timing > global.MaxTime*global.PerfectPercent){
		Earn_Score();
		
		txt_good.visible = true;

		global.TravelEarn = 0;
	}
	if(timing < global.MaxTime*global.PerfectPercent && timing > global.MaxTime*global.InsanePercent){
		Earn_Score();
		
		txt_perfect.visible = true;
		
		global.TravelEarn = 1;
	}
	if(timing < global.MaxTime*global.InsanePercent){
		Earn_Score();
		
		txt_insane.visible = true;

		global.TravelEarn = 2;
	}
	if(timing > global.MaxTime*global.goodPercent){
		MinusLife();

		global.TravelEarn = -1;
	}
}


function Earn_Score(){
	global.pts[global.index_target].visible = true;
	global.pts[global.index_target].image_speed = 0.8;
	global.Score += 100;
}

function Perfect_Cooldown(Time)
{
	// global.MaxTime = Time;
	
	if(global.second > 0)
	{
		global.second = global.second - delta_time/1000000 ;
		Timer_point.image_angle += ((1/1000000)*360)/global.MaxTime * delta_time;
		
	}else{
		//tu meurt batard
		LifeEventBadTiming()
	}
}
	


