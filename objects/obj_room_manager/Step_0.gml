/// @description 

if (os_browser != browser_not_a_browser) {
     // Being run in a browser
	 // Adds fullscreen support
	 // check if display is larger than the window
	if display_get_width()!=window_get_width() {
	    // resize window to display
	    //window_set_size(display_get_width(),display_get_height());
		
		var _vx = camera_get_view_width(view_camera[0]);
		var _vy = camera_get_view_height(view_camera[0]);
		display_set_gui_size(_vx, _vy);
	}
}