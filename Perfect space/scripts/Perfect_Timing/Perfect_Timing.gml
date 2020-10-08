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


math_set_epsilon(6);


function SetmaxLife(MaxLife) 
{
	global.Life = MaxLife;
}

function Die(){
		room_goto(Mort)
}

function resetTime(){
	global.second = 3;
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
		global.Score += 100;	
	}
	if(timing < global.MaxTime*global.PerfectPercent && timing > global.MaxTime*global.InsanePercent){
		global.Score += 250;
	}
	if(timing < global.MaxTime*global.InsanePercent){
		global.Score += 500;
	}
	if(timing > global.MaxTime*global.goodPercent){
		MinusLife();
	}
}

function Perfect_Cooldown(Time)
{
	global.MaxTime = Time;
	
	if(global.second > 0)
	{
		global.second = global.second - delta_time/1000000 ;
		Timer_point.image_angle += ((1/1000000)*360)/3 * delta_time;
		
		// BarVie.image_xscale -= (1/300000)*(delta_time)
		show_debug_message(global.second);
	}else{
		//tu meurt batard
		Die();
	}
}
	


