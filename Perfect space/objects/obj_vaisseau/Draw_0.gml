draw_primitive_begin(pr_trianglestrip);
var size_list = ds_list_size(list_points);
for(var i = 0; i < size_list-1; i++){
	var grid_point1 = list_points[| i];
	var grid_point2 = list_points[| i + 1];
	
	var x1 = grid_point1[# 0, e_point.x];
	var y1 = grid_point1[# 0, e_point.y];	
	var w1 = grid_point1[# 0, e_point.width];

	var x2 = grid_point2[# 0, e_point.x];
	var y2 = grid_point2[# 0, e_point.y];	
	var w2 = grid_point2[# 0, e_point.width];
	
	var dir = point_direction(x1, y1, x2, y2);
	var ortho_dir1 = dir + 90;	
	var ortho_dir2 = dir - 90;
	
	draw_vertex(x1 + lengthdir_x(w1, ortho_dir1), y1 + lengthdir_y(w1, ortho_dir1));
	draw_vertex(x1 + lengthdir_x(w1, ortho_dir2), y1 + lengthdir_y(w1, ortho_dir2));
	
	draw_vertex(x2 + lengthdir_x(w2, ortho_dir1), y2 + lengthdir_y(w2, ortho_dir1));
	draw_vertex(x2 + lengthdir_x(w2, ortho_dir2), y2 + lengthdir_y(w2, ortho_dir2));

	
}

draw_primitive_end();



draw_self();