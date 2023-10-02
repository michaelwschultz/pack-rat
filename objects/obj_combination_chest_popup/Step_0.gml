/// @description Insert description here
var is_equal = array_equals(global.combination, combination);

if (is_equal and !global.game_over) {
	global.game_over = true;
	
	room_goto(rm_game_over);
}










