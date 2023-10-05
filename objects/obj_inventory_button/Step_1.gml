/// @description Button Parent

// Here we're getting the X position of the mouse on the GUI layer.
// The Draw GUI event is used to draw the button, which is a separate layer
// on top of the game. So input for these buttons must also be taken on the GUI layer.
var _mouse_gui_x = device_mouse_x_to_gui(0);

// Get the Y position of the mouse on the GUI layer
var _mouse_gui_y = device_mouse_y_to_gui(0);

// Check if the mouse point is colliding with this instance (using 'id').
// This means the mouse is hovering on the button.
if (collision_point(_mouse_gui_x, _mouse_gui_y, object_index, false, false) == id) {
	// If it is, change the frame to the hover frame (1)
	if (is_open) {
		image_index = 3;
	} else {
		image_index = 1;
	}

	// If the left mouse button is released (which is when we register a click),
	if (mouse_check_button_pressed(mb_left)) {
		// remove current tool and replace cursor
		global.current_tool = -1;
		cursor_sprite = spr_cursor;
		
		event_user(0);
	}
}
// If the mouse is not hovering,
else {
	// Change the frame to the idle frame (0)
	if (is_open) {
		image_index = 2;  // x button
	} else {
		image_index = 0;
	}
}
