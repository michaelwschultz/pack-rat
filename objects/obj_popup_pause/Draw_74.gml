/// @description Pause Menu

/*
	This is here because if it is in the Draw GUI
	the buttons will draw below it.
*/

// Check if a screenshot exists
if (sprite_exists(global.screen_shot_id))
{
	// Id one does, draw it
	draw_sprite(global.screen_shot_id, 0, 0, 0);
}

// Draw the Sprite
draw_self();

// Set the Font horizontal alignment
draw_set_halign(fa_center);

// Set the font vertical alignment
draw_set_valign(fa_middle);

// Set the font
draw_set_font(ft_game_end_small);

// Use our custom function to draw the text and the outline 
draw_text_transformed_outlined(x, y - map_value(image_xscale, 0, 1, 0, 280), "GAME PAUSED", image_xscale, image_yscale, image_angle, #baaa7d, #33261E);
