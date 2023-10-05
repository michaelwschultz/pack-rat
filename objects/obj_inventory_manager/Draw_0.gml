/// @description Insert description here

// NOTE: this is super important or the game crashes when you when
// still not sure why this happens
if (global.game_over or !object_exists(obj_inventory_button)) {
	exit;
}

draw_set_font(fnt_press_start);

// Draw tools
for (var i = 0; i < array_length(inventory); i++) {
	var _xx =  item_start_y_position;
	var _yy = obj_inventory_button.move_distance + 20; 
	var _gap = item_gap;
	var _color = red_color;
	var _inventory_sprite = inventory[i].inventory_sprite;
	
	var _alpha = 1;
	
	//TODO: should use the name instead of the index
	// HUGE learning is to not rely on the order of arrays to
	// infer things. We should always be passing around the
	// full inventory. You never know when it's going to be useful.
	if (global.current_tool == i) {
		_alpha = 0.5;
	}
	
	// NOTE: draws sprite while also scaling it down
	draw_sprite_ext(_inventory_sprite, 0, _xx + (_gap * i), _yy, 0.6, 0.6, image_angle, image_blend, _alpha);
	
	
	if (selected_item == i) {
		_color = red_color_highlight;
	}
	
	draw_set_color(_color);
	draw_text_transformed(_xx + (_gap * i), _yy + 34, inventory[i].name, 0.3, 0.3, 0);
	draw_set_color(red_color);
}

// Draw notes
for (var i = 0; i < array_length(notes); i++) {
	var _xx =  475;
	var _yy = obj_inventory_button.move_distance + 15;
	var _gap = item_gap;
	var _sprite = notes[i].sprite;
	var _glyph = notes[i].inventory_sprite;
		
	draw_sprite_ext(_sprite, 0, _xx + (45 * i), _yy, 1, 1, image_angle, image_blend, 1);
	draw_sprite_ext(_glyph, 0, _xx + (45 * i), _yy + 29, 0.5, 0.5, image_angle, image_blend, 1);
}
