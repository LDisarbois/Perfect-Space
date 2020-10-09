reach_planete();

if(!global.move){

	if(global.TravelEarn > 0){
	
		resetTime();
		Earn_Score();
	
		defineNewTarget();
		basic_movement();
		global.TravelEarn--;
	
	} else {
		txt_good.visible = false;
		txt_perfect.visible = false;
		txt_insane.visible = false;


		Perfect_Cooldown(global.MaxTime);
	
		if(keyboard_check_pressed(vk_space)){
			
			if(global.Score == 0){
				spaceIndice.visible = false;
			}
			
			Perfect_Timing_event();
			resetTime();
		
			if(global.TravelEarn = -1){
				Perfect_Cooldown(3);
			} else {
				defineNewTarget();
				basic_movement();
			}		
		}
	}
}


var size_list = ds_list_size(list_points);

if(size_list >= length){
	var grid_point = list_points[| 0];
	if(ds_exists(grid_point, ds_type_grid)){
		ds_grid_destroy(grid_point);
	}
	ds_list_delete(list_points, 0);
}

//add point each step
var grid_point = ds_grid_create(1, e_point.length);
grid_point[# 0, e_point.x] = x;
grid_point[# 0, e_point.y] = y;
grid_point[# 0, e_point.width] = width;
ds_list_add(list_points, grid_point);


var size_list = ds_list_size(list_points);
for(var i = 0; i < size_list; i++){
	var grid_point = list_points[| i];
	if(global.result == 3){
		grid_point[# 0, e_point.width] *= 0.7;
	} else if(global.result == 2){
		grid_point[# 0, e_point.width] *= 0.6;
	} else if(global.result == 1){
		grid_point[# 0, e_point.width] *= 0.5;
	} else {
		grid_point[# 0, e_point.width] *= 0;
	}
		
	
}