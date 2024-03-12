/// @description Insert description here

movement_speed = 2;
target_x = NaN;
target_y = NaN;

function set_player_walk() {
	sprite_index = spr_player_walk;
	sprite_set_speed(spr_player_walk, 6, spritespeed_framespersecond);
}

function set_player_idle() {
	sprite_index = spr_player_idle;
}