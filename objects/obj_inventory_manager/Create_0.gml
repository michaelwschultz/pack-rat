/// @description Insert description here

selected_item = -1;
item_start_y_position = 200;
screen_border = 20;
item_gap = 60;
average_item_height = 25;
red_color = make_colour_rgb(172, 68, 39);
red_color_highlight = make_colour_rgb(239, 101, 68);

function create_item(_name, _description, _sprite, _effect) constructor {
	name = _name;
	description = _description;
	sprite = _sprite;
	effect = _effect;
}

global.inventory_list = {
	key: new create_item(
		"key",
		"Used to unlock something.",
		spr_tool_key,
		function() {
			global.current_tool = selected_item;
			array_delete(inventory, selected_item, 1);  // remove the item
		}
	),
	gundam_head: new create_item(
		 "gundam_head",
		 "I've been looking for this!",
		 spr_tool_gundam,
	),
	hammer: new create_item(
		"hammer",
		 "Used to build things, or tear them down.",
		spr_tool_hammer,
		function() {
			global.current_tool = selected_item;
			cursor_sprite = inventory[selected_item].sprite;
			//array_delete(inventory, selected_item, 1); // remove the item
		}
	),
	grapple: new create_item(
		"grapple",
		"Used to get to high places.",
		spr_tool_grapple,
	)
}

// build inventory
inventory = array_create(0);

//EXAMPLE: how we add items to the inventory
//array_push(inventory, global.inventory_list.key)
//array_push(inventory, global.inventory_list.hammer)
//array_push(inventory, global.inventory_list.grapple)







