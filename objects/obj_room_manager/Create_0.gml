/// @description Insert description here
// TODO: write script that goes through each room
//and does this automatically at the start of the game

// TODO: re-enable this once I've moved the persistent_manager
// to the menu screen only, to keep track of the previous room.
//global.previous_room = room.id;

// Clear the mouse state in-case the player is still holding down left click
mouse_clear(mb_left)

// Scaling game resolution
base_w = 640; // 640
base_h = 360; // 360
aspect = display_get_width() / display_get_height();

//  temp screen adjustment // ***********************
// TODO: change to 1 before submitting to itch
var scale_factor = 2; // Change this to 4 for 1440p or 6 for michael's monitor
var target_width = base_w * scale_factor;
var target_height = base_h * scale_factor;

// Set the view and port to match the target resolution
view_wport[0] = target_width;
view_hport[0] = target_height;
window_set_size(target_width, target_height);

// Adjust the application surface size
surface_resize(application_surface, target_width, target_height);

// set GUI size
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);
