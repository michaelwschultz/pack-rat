/// @description 

if(showing_dialog == true) {
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var border = 5;
	var padding = 16;	
	
	height = string_height(current_dialog.message);
	
	if(sprite_get_height(current_dialog.sprite) > height) {
		height = sprite_get_height(current_dialog.sprite);
	}

	height += padding * 2;
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	
	draw_set_alpha(alpha);
	
	draw_set_color(blue_color);
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	
	draw_set_color(c_white);
	draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);
	
	draw_set_color(blue_color);
	draw_rectangle((border * 2), (border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);
	
	if(current_dialog.sprite != -1) {
		draw_sprite(current_dialog.sprite, 0, border * 3, border * 3);
	}
	
	draw_set_color(c_white);
	draw_text_ext(text_x, text_y, current_dialog.message, 16, display_get_gui_width() - 192);
	
	// Get the current mouse GUI position
	var mx = (window_mouse_get_x()/window_get_width()) * display_get_gui_width();
	var my = (window_mouse_get_y()/window_get_height()) * display_get_gui_height();

	// TODO: this is a really weird place to have these
	// Actions
	
	// If there is only one action, just run it
	if (current_dialog.first_action and !current_dialog.second_action) {
		current_dialog.first_action();
		
	} else {
		// Get the width of each option
		var first_option = "climb";
		var first_option_width = string_width(first_option);
		
		if (current_dialog.first_action) {
			// Check if the mouse is hoving over each option
			var is_hovering_first_option = point_in_rectangle(mx, my, text_x,  text_y + 35, text_x + first_option_width,  text_y + 60);
	
			if (is_hovering_first_option) {
				draw_set_color(red_color_highlight);
			} else {
				draw_set_color(red_color);
			}
			draw_text_ext(text_x, text_y + 40, first_option, 14, display_get_gui_width() - 192);
		
			if (mouse_check_button_pressed(mb_left)) {	
				if (is_hovering_first_option) {
					current_dialog.first_action();
					showing_dialog = false;
					alpha = 0;
				} 
			}
		}

		if (current_dialog.second_action) {
			var second_option = "pickup";
			var second_option_width = string_width(second_option);
	
			var is_hovering_second_option = point_in_rectangle(mx, my, text_x + first_option_width + 16,  text_y + 35, text_x + first_option_width + 16 + second_option_width,  text_y + 60);
	
			if (is_hovering_second_option) {
				draw_set_color(red_color_highlight);
			} else {
				draw_set_color(red_color);
			}
			draw_text_ext(text_x + first_option_width + 16, text_y + 40, second_option, 14, display_get_gui_width() - 192);
		
			if (mouse_check_button_pressed(mb_left)) {	
				if (is_hovering_second_option) {
					current_dialog.second_action();
					showing_dialog = false;
					alpha = 0;
				} 
			}
		}
	}
	// reset color
	draw_set_color(c_white);
	
	alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);
