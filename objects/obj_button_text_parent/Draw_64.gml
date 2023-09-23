/// @description Button Text Parent


// Inherit the draw_self() line from obj_button_parent
event_inherited();

// Set the font 
// TODO: LUKE add custom font
//draw_set_font(ft_button);
draw_set_font(fnt_test);

// Set the horizontal and verticle alignment of the text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set the alpha of the text
draw_set_alpha(image_alpha);

// Use our custom function to draw the text and the outline using the variables we set in the create event
draw_text_transformed_outlined(x, y, string(text), image_xscale, image_yscale, 0, text_outline_color, text_color);

// Reset the alpha, font alignment, and color to default values
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
