/// @description Persistent Manager
global.isFullscreen = false;


// This variable tells you whether or not a popup menu currently exists
global.popup_menu_exists = false;

// This variable tells you whether or not the menu is locked.
// If this variable is true, it prevents you from interacting with instances
global.menu_lock = false;

// This variable stores the current screenshot id if one exists. Otherwise, it will store -1.
global.screen_shot_id = -1;

// Turn off drawing the default cursor
window_set_cursor(cr_none);

// Give the cursor a sprite
cursor_sprite = spr_cursor;


//var scale_factor = 4; // Change this to 4 for 1440p or 6 for michael's monitor
//var target_width = 640 * scale_factor;
//var target_height = 360 * scale_factor;

// Set the view and port to match the target resolution
//view_wport[0] = target_width;
//view_hport[0] = target_height;
//window_set_size(target_width, target_height);

// Adjust the application surface size
//surface_resize(application_surface, target_width, target_height);