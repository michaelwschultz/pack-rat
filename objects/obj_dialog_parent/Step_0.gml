/// @description 

if(showing_dialog == false) {
	if(dialog.count() <= 0) {
		unlock_movement();
		instance_destroy();
		return;
	}
	
	current_dialog = dialog.pop();
	showing_dialog = true;
	lock_movement();
} else {
	if(keyboard_check_released(key_next)) {
		showing_dialog = false;
		alpha = 0;
	}
}