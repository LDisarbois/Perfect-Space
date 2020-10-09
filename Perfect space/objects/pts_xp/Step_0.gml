if(x < TXT_Score.x) {
		if(x + 15 > TXT_Score.x){
			//	defineNewTarget();
			//	basic_movement();
			visible = false;
			x = xpos;
			y = ypos;
			speed = 0;
			audio_play_sound(bonus,0,0)
			global.ScoreDisplay += 100;
		}
	} else {
	if(x - 15 < TXT_Score.x){
			// defineNewTarget();
			// basic_movement();
			visible = false;
			x = xpos;
			y = ypos;
			speed = 0;
			global.ScoreDisplay += 100;
		}
	}