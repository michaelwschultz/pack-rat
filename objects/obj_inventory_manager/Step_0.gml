/// @description Insert description here
if (!object_exists(obj_inventory_button) or global.game_over) {
	exit;
}

selected_item = -1;
for (var i = 0; i < array_length(inventory); i++) {
	var _xx = item_start_y_position;
	//var _yy = room_height - average_item_height - screen_border; 
	var _yy = object_exists(obj_inventory_button) && obj_inventory_button.move_distance + 15;
	
	// add a gap after the first item
	if (i > 0) {
		_xx += (item_gap * i);
	}
	
	if (mouse_x > _xx - 5 and mouse_x < _xx + 30 and mouse_y > _yy and mouse_y < _yy + 40) {
		selected_item = i;
	}
}

if(selected_item != -1) {
	if(object_exists(obj_inventory_button) and obj_inventory_button.is_open) {
		if (mouse_check_button_pressed(mb_left)) {
			show_debug_message("selected your " + inventory[selected_item].name);
			inventory[selected_item].on_use();
		}
	}
}

if (global.current_tool == -1) {
	cursor_sprite = spr_cursor;
}











