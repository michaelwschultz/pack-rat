/// @description Insert description here

draw_set_font(fnt_press_start);

if (object_exists(obj_inventory_button)) {
	for (var i = 0; i < array_length(inventory); i++) {
		var _xx =  item_start_y_position;
		var _yy = obj_inventory_button.move_distance + 20; 
		var _gap = item_gap;
		var _color = red_color;
		var _sprite = inventory[i].sprite;
	
		var _alpha = 1;
	
		if (global.current_tool == i) {
			_alpha = 0.5;
		}
	
		// NOTE: draws sprite while also scaling it down
		draw_sprite_ext(_sprite, 0, _xx + _gap * i, _yy, 0.6, 0.6, image_angle, image_blend, _alpha);
	
	
		if (selected_item == i) {
			_color = red_color_highlight;
		}
	
		draw_set_color(_color);
		draw_text_transformed((_xx + _gap * i) - 5, _yy + 34, inventory[i].name, 0.3, 0.3, 0)
		draw_set_color(red_color);
	}
}


if (object_exists(obj_notes)) {
	for (var i = 0; i < array_length(notes); i++) {
		var _xx =  485;
		var _yy = 387;
		var _gap = item_gap;
		var _color = red_color;
		var _sprite = notes[i].sprite;
		
		draw_sprite_ext(_sprite, 0, _xx + _gap * i, _yy, 1, 1, image_angle, image_blend, 1);
	}
}