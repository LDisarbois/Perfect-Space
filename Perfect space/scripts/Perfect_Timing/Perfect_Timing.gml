// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information

global.MaxTime = 3;
global.second = 3;
global.Life = undefined;
global.goodPercent = 25/100;
global.PerfectPercent = 13/100;
global.InsanePercent = 5/100;
global.Score = 0;


function SetmaxLife(MaxLife) 
{
	global.Life = Maxlife;
}

function Die(){
		room_goto(Mort)
}

function MinusLife()
{
	global.Life--;
	if(Life == 0){
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
	if(timing > global.goodPercent){
		MinusLife();
	}
}

function Perfect_Cooldown(Time)
{
	if(global.second >= 0)
	{
		global.second --;
	}else{
		//tu meurt batard
		Die();
	}
}
	


