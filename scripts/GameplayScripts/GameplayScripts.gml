/// Script Functions

/// @description Is used by a sequence to lock the player movement
function lock_movement()
{
	// Set the global.movement_locked to true in order to prevent interacting with certain objects
	global.movement_locked = true;
}

/// @description Is used by a sequence to unlock the menu
function unlock_movement()
{
	// Set the global.movement_locked to false so buttons can be interacted with again
	global.movement_locked = false;
}

/// @description Draw text with an outline
/// @param {num} _x
/// @param {num} _y
/// @param {string} _string
/// @param {num} _xscale
/// @param {num} _yscale
/// @param {num} _angle
/// @param {col} _outline_color
/// @param {col} _string_color
function draw_text_transformed_outlined(_x, _y, _string, _xscale, _yscale, _angle, _outline_color, _string_color)
{	
	// Set the color for the outline first
	draw_set_color(_outline_color);  
	
	// Draw the text 8 times with an offset of one pixel
	draw_text_transformed(_x + 1,	_y + 1,  _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x - 1,	_y - 1,  _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x,		_y + 1,  _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x + 1,   _y,		 _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x,		_y  - 1,  _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x - 1,   _y,		 _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x - 1,	_y  + 1, _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x + 1,	_y   - 1, _string, _xscale, _yscale, _angle);  
   
	// Set the color for the text itself
	draw_set_color(_string_color);  
	
	// Draw the text on top
	draw_text_transformed(_x, _y, _string, _xscale, _yscale, _angle);  
}
