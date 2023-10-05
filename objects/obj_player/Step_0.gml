/// @description Insert description here

var distance_from_mouse = point_distance(x, y, mouse_x, mouse_y);

// If left mouse button held, walk toward mouse position.
if (
	mouse_check_button(mb_left) and 
	!global.movement_locked and
	distance_from_mouse > 10
) {
	target_x = mouse_x;
	target_y = mouse_y;
	
	set_player_walk();
	// Determine next step after each step to navigate around obj_obstacle children
	mp_potential_step_object(mouse_x, mouse_y, movement_speed, obj_obstacle_parent);
} else {
	set_player_idle();
}

 // Turn player torwards selected target
if (target_x <= x) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}
