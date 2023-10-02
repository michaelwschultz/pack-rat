/// @description Insert description here

selected_item = -1;
for (var i = 0; i < array_length(inventory); i++) {
	var _xx = item_start_y_position;
	var _yy = room_height - average_item_height - screen_border; 
	
	// add a gap after the first item
	if (i > 0) {
		_xx += item_gap;
	}
	
	if (mouse_x > _xx - 10 and mouse_x < _xx + 25 and mouse_y > _yy and mouse_y < _yy + 30) {
		selected_item = i;
	}
}

if (selected_item != -1) {
	if (mouse_check_button_pressed(mb_left)) {
		show_debug_message("used your " + inventory[selected_item].name);
		inventory[selected_item].on_use();
	}
}












