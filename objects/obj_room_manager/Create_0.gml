/// @description Insert description here
// TODO: write script that goes through each room
//and does this automatically at the start of the game

// TODO: re-enable this once I've moved the persistent_manager
// to the menu screen only, to keep track of the previous room.
//global.previous_room = room.id;


// Scaling game resolution
var base_w = 640; // 640
var base_h = 360; // 360
var aspect = display_get_width() / display_get_height();

//  temp screen adjustment // ***********************
// TODO: change to 1 before submitting to itch
var scale_factor = 3; // Change this to 4 for 1440p or 6 for michael's monitor
var target_width = base_w * scale_factor;
var target_height = base_h * scale_factor;

// Set the view and port to match the target resolution
view_wport[0] = target_width;
view_hport[0] = target_height;
window_set_size(target_width, target_height);

// Adjust the application surface size
surface_resize(application_surface, target_width, target_height);

// end temp screen adjustment // ***********************

//var VIEW_WIDTH = base_w;
//var VIEW_HEIGHT = base_h;
//if (max_w < max_h) {
//    // portait
//    VIEW_WIDTH = min(base_w, max_w);
//    VIEW_HEIGHT = VIEW_WIDTH / aspect;
//} else {
//    // landscape
//    VIEW_HEIGHT = min(base_h, max_h);
//    VIEW_WIDTH = VIEW_HEIGHT * aspect;
//}

//camera_set_view_size(view_camera[0], floor(VIEW_WIDTH), floor(VIEW_HEIGHT))
//view_wport[0] = max_w;
//view_hport[0] = max_h;
//surface_resize(application_surface, view_wport[0], view_hport[0]);

//// Scaling game GUI 
//if (global.isFullscreen) {
//	if (aspect > 1) {
//	    // landscape
//	    ww = base_h * aspect;
//	    hh = base_h;
//	    display_set_gui_maximise((max_w / ww), (max_h / hh), 0, 0);
	
//		show_debug_message("camera - "  +  string(max_w / ww) + " " + string(max_h / hh))
//	} else {
//	    // portrait
//	    ww = base_w;
//	    hh = base_w / aspect;
//	    display_set_gui_maximise((max_w / ww), (max_h / hh), 0, 0);
//	}
//} else {
//	display_set_gui_maximise((base_w), (base_h), 0, 0);	
//}

if (aspect > 1) {
	// landscape
    display_set_gui_size(base_h * aspect, base_h);
} else {
    // portrait
    display_set_gui_size(base_w, base_w / aspect);
}