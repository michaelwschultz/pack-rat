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
