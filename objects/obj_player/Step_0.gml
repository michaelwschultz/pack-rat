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






//********** OLD movement code

//if (!moving or global.movement_locked) {
//	sprite_index = spr_player_idle;
//	sprite_set_speed(spr_player_walk, 0, false);
//	image_index = 0;
//	// reset target so player stops moving
//	moving = false;
//	target_x = NaN;
//	target_y = NaN;
//} else {
//	sprite_index = spr_player_walk;
//	sprite_set_speed(spr_player_walk, 6, false);
//	image_speed = 1;
//}

//// Move player to clicked target
//if (!global.movement_locked) {
//	//NOTE: add this back if we want to be able to hold the button
//	//device_mouse_check_button(0, mb_left)
//	if (device_mouse_check_button_pressed(0, mb_left)) {
//		target_x = mouse_x;
//		target_y = mouse_y;
//		moving = true;
	
//		// Turn player torwards selected target
//		if (target_x <= x) {
//			image_xscale = -1;
//		} else {
//			image_xscale = 1;
//		}
//	}

//	if (moving and !global.movement_locked) {
//		sprite_index = spr_player_walk;
//		if (target_x and target_y) {
//			var distance = point_distance(x, y, target_x, target_y);
//			var moveX = lerp(x, target_x, movement_speed / distance);
//			var moveY = lerp(y, target_y, movement_speed / distance);
	
//			if (!place_meeting(moveX, moveY, [obj_obstacle_parent, obj_interactive_parent])) {	
//				if (distance > min_pixel_distance) {
//					x = moveX;
//					y = moveY;
//				} else {
//					moving = false;	
//				}
//			} else {
//				// TODO: rather than stopping, continue to move past obstacle by sliding against it.
//				moving = false;	
//			}
//		}
//	}
//}

// ************** OLD MOVEMENT CODE 