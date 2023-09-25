/// @description Insert description here

if (!moving or global.movement_locked) {
	sprite_set_speed(spr_player_walk, 0, false);
	image_index = 0;
	// reset target so player stops moving
	moving = false;
	target_x = NaN;
	target_y = NaN;
} else {
	sprite_set_speed(spr_player_walk, 6, false);
	image_speed = 1;
}

// Move player to clicked target
if (!global.movement_locked) {
	if (device_mouse_check_button_pressed(0, mb_left) or device_mouse_check_button(0, mb_left)) {
		target_x = mouse_x;
		target_y = mouse_y;
		moving = true;
	
		// Turn player torwards selected target
		if (target_x <= x) {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
	}


	if (moving) {
		if (target_x and target_y) {
			var distance = point_distance(x, y, target_x, target_y);
			var moveX = lerp(x, target_x, movement_speed / distance);
			var moveY = lerp(y, target_y, movement_speed / distance);
	
			// TODO: why does this only work once then the player get's stuck in moving
			if (!place_meeting(moveX, moveY, [obj_obstacle_parent, obj_interactive_parent])) {	
				if (distance > min_pixel_distance) {
					x = moveX;
					y = moveY;
				} else {
					moving = false;	
				}
			} else {
				moving = false;	
			}
		}
	}
}