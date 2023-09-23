/// @description Tower Buy Parent


// Declare a temporary variable and default it to false
var _clicked = false;

// Use with to loop through all interactive objects
with (obj_interactive_parent)
{
	// Check if there is a meeting with the mouse
	if (position_meeting(mouse_x, mouse_y, id)) 
	{
		// If so, check if the instance id is the same as the id of the tower that created this menu
		if (id == other.my_tower)
		{
			// If so set clicked to true
			_clicked = true;
			
			// Break out of this loop
			break;
		}
		// Otherwise check if this is a differet tower base or a tower
		else if (object_index == obj_tower_base) || (object_is_ancestor(object_index, obj_tower_parent))
		{
			// If so, continue
			continue;
		}
		
		// If this isn't the tower that created it, or another tower base or tower
		// then it is part of the menu and we want to set clicked to true
		_clicked = true;
		break;
	}
}

// Check if clicked is false. It will be false if
// the player clicked on something other than the menu
// or the tower base or tower that created the menu
if (!_clicked)
{
	// Check if confirmed is true (if it is we want to switch to unconfirm)
	if (confirmed)
	{
		// Set confirmed to false
		confirmed = false;
		
		// Loop through all the menu buttons to find the one that is confirmed
		with (obj_menu_button_parent)
		{
			// Check if it is confirmed
			if (confirmed)
			{
				// Set confirmed to false
				confirmed = false;
				
				// Use are custom function to switch the icon
				switch_icon();
			}
		}	
	}
	// If the menu is not in a confirmed state, we want to close the menu
	else 
	{
		// Set global.popup_menu_exists to false
		global.popup_menu_exists = false;	
		
		// Destroy this popup_menu
		instance_destroy(id);
	}
	
	// Destroy the tower range icon if one exists
	instance_destroy(obj_tower_range);
}

