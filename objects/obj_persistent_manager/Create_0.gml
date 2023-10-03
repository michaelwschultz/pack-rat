/// @description Persistent Manager

global.game_over = false;

////play background music
//audio_play_sound(mouse_house_bgm, 100, true, 0.3);
	
global.isFullscreen = false;

// This variable tells you whether or not a popup menu currently exists
global.popup_menu_exists = false;

// This variable tells you whether or not the movement is locked.
// If this variable is true, it prevents player from interacting with instances
global.movement_locked = false;

// This variable tells us which room was visited last
global.previous_room = -1;
	
global.current_tool = -1;
	
global.combination = [0, 0, 0];


// Cursor setup
// Turn off drawing the default cursor
window_set_cursor(cr_none);
// Give the cursor a sprite
cursor_sprite = spr_cursor;

// Font setup
// Seems the only thing that works is unicode to display special characters
global.fnt_symbol_note = "\u0153";
global.fnt_symbol_heart = "\u0152";

global.room_start_x_location = 300;
global.room_start_y_location = 300;
global.room_start_facing_left = false;