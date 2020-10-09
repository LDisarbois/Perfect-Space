window_set_cursor(cr_none);

list_points = ds_list_create();
enum e_point
{
	x, 
	y,
	width,
	length,
}
length = 100;
width = 25;

audio_play_sound(Looped_VVV_Song,1,true);

basic_movement();
Perfect_Timing();
