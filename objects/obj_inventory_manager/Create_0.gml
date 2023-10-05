/// @description Insert description here

selected_item = -1;
item_start_y_position = 195;
item_gap = 55;
red_color = make_colour_rgb(172, 68, 39);
red_color_highlight = make_colour_rgb(239, 101, 68);

// NOTE: these should probably be kept as variables on the instance or something
key_picked_up = false;
gundam_made_whole = false;

function create_item(_name, _description, _sprite, _on_collect, _on_use,  _inventory_sprite) constructor {
	name = _name;
	description = _description;
	sprite = _sprite;
	on_collect = _on_collect;
	on_use = _on_use;
	inventory_sprite = _inventory_sprite;
}

global.inventory_list = {
	key: new create_item(
		"key",
		"Used to unlock something.",
		spr_world_key,
		function() {
			instance_create_layer(0, 0, "Instances_static", obj_dialog_pickup_key);
		},
		function() {
			global.current_tool = inventory[selected_item];
			cursor_sprite = inventory[selected_item].inventory_sprite;
			obj_inventory_button.is_open = false;
		},
		spr_tool_key
	),
	gundam_head: new create_item(
		"helmet",
		"I've been looking for this!",
		spr_tool_gundam_head,
		function() {
			instance_create_layer(0, 0, "Instances_static", obj_dialog_pickup_gundam_head);
		},
		function() {
			global.current_tool = inventory[selected_item];
			cursor_sprite = inventory[selected_item].inventory_sprite;
			obj_inventory_button.is_open = false;
		},
		spr_tool_gundam_head
	),
	hammer: new create_item(
		"hammer",
		 "Used to build things, or tear them down.",
		spr_world_hammer,
		function() {
			instance_create_layer(0, 0, "Instances_static", obj_dialog_pickup_hammer);
		},
		function() {
			global.current_tool = inventory[selected_item];
			cursor_sprite = inventory[selected_item].inventory_sprite;
			obj_inventory_button.is_open = false;
		},
		spr_tool_hammer
	),
	grapple: new create_item(
		"grapple",
		"Used to get to high places.",
		spr_world_grapple,
		function() {},
		function() {
			global.current_tool = inventory[selected_item];
			cursor_sprite = inventory[selected_item].inventory_sprite;
		},
		spr_tool_grapple
	)
}

global.notes_list = {
	four: new create_item(
		"4",
		"flower pot",
		spr_number_flower_pot,
		function() {},
		function() {},
		spr_flower_pot_glyph
	),
	seven: new create_item(
		"7",
		"gundam",
		spr_number_gundam,
		function() {},
		function() {},
		spr_gundam_glyph
	),
	two: new create_item(
		"2",
		"floor board",
		spr_number_floor_board,
		function() {},
		function() {},
		spr_hammer_glyph
	),
}

inventory = array_create(0);
notes = array_create(0);

//EXAMPLE: how we add items to the inventory
//array_push(notes, global.notes_list.two)
//array_push(notes, global.notes_list.seven)
//array_push(notes, global.notes_list.four)
//array_push(inventory, global.inventory_list.hammer)
//array_push(inventory, global.inventory_list.grapple)







