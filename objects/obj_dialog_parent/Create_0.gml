/// @description 

dialog = new Dialog();

key_next = mb_left;

showing_dialog = false;

current_dialog = {
	message: "",
	sprite: undefined,
};

alpha = 0;

draw_set_font(fnt_press_start);

red_color = make_colour_rgb(172, 68, 39);
red_color_highlight = make_colour_rgb(239, 101, 68);
blue_color = make_colour_rgb(42, 54, 54);

function do_after() {}