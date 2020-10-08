// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information
global.secondMax = null;
global.second = null;
global.goodPorcent = 25/100;
global.PerfectPorcent = 13/100;
global.InsanePorcent = 5/100;





function Cooldown(timetoperf) 
{
	global.secondMax =timetoperf;
	global.second = timetoperf;
	if global.second <=0{
		global.second --;
	}else if global.second > 0{
		// tu meurt ta race
	}	

}


function Perfect_Timing_click(){
	timeclicked = global.second;
	
	if (timeclicked < global.secondMax*global.goodPorcent && timeclicked > global.secondMax*global.PerfectPorcent){
	//C'est good
	}
	if (timeclicked < global.secondMax*global.PerfectPorcent && timeclicked > global.secondMax*global.InsanePorcent){
	//C'est perfect
	}
	if (timeclicked < global.secondMax*global.InsanePorcent){
	//C'est Insane
	}
	
}