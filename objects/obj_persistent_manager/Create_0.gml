/// @description Persistent Manager
global.isFullscreen = false;


// This variable tells you whether or not a popup menu currently exists
global.popup_menu_exists = false;

// This variable tells you whether or not the menu is locked.
// If this variable is true, it prevents you from interacting with instances
global.menu_locked = false;

// This variable tells you whether or not the movement is locked.
// If this variable is true, it prevents player from interacting with instances
global.movement_locked = false;

// This variable stores the current screenshot id if one exists. Otherwise, it will store -1.
global.screen_shot_id = -1;

// This variable tells us which room was visited last
global.previous_room = -1;

// Cursor setup
// Turn off drawing the default cursor
window_set_cursor(cr_none);
// Give the cursor a sprite
cursor_sprite = spr_cursor;

// Font setup
// Seems the only thing that works is unicode to display special characters
global.fnt_symbol_note = "\u0153";
global.fnt_symbol_heart = "\u0152";
