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
global.


function SetmaxLife(MaxLife) 
{
	global.Life = Maxlife;
}

function MinusLife()
{
	global.Life--;
}

function Perfect_Timing_event()
{
	timing = global.second;
	if(timing < global.MaxTime*global.goodPercent && timing > global.MaxTime*global.PerfectPercent){
	}
	if(timing < global.MaxTime*global.PerfectPercent && timing > global.MaxTime*global.InsanePercent){
	}
	if(timing < global.MaxTime*global.InsanePercent){
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
		room_goto(Mort);
	}
}
	


