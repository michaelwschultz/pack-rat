/// @description Insert description here

if (is_open) {
	is_open = false;
	image_index = 0;
	unlock_movement()
} else {
	is_open = true;
	image_index = 2;
	lock_movement()
}