/// @description 

if(showing_dialog == false) {
	if(dialog.count() <= 0) {
		unlock_movement();
		do_after();
		instance_destroy();
		return;
	}
	
	current_dialog = dialog.pop();
	showing_dialog = true;
	lock_movement();
	
} else {
	if(mouse_check_button_pressed(key_next) and !current_dialog.first_action) {
		showing_dialog = false;
		alpha = 0;
	}
}