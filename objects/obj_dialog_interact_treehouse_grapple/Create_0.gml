/// @description 

// Inherit the parent event
event_inherited();

item = global.inventory_list.grapple;
global.grapple_is_going_up = true;

if (obj_player.y < 150) {
	global.grapple_is_going_up = false;
}

var climb_treehouse = function () {
	// reverse direction and speed if up param is false
	var direction_and_speed = 2;
	if (!global.grapple_is_going_up) {
		direction_and_speed = direction_and_speed * -1;
	}
	with(obj_player) {
		path_start(Path_treehouse, direction_and_speed, path_action_stop, true);
	}
};

// NOTE: add back if we have time
//var pick_up_grapple = function () {
//	item_add(item);
	
//	// NOTE: I couldn't find a better way to figure out how to target the grapple
//	instance_destroy(inst_660F16AC); // refernces grapple instance directly
//	obj_inventory_button.is_open = true;
	
//	// reset
//	global.grapple_is_going_up = true;
//};

if (global.grapple_is_going_up and global.grapple_is_first_time_outside) {
	dialog.add(spr_avatar, "It's been a while since I've been up there.", climb_treehouse);	
	// dialog.add(spr_avatar, "I wonder if this grapple could be useful?", climb_treehouse, pick_up_grapple);
} else {
	climb_treehouse()
}

function do_after() {
	global.grapple_is_first_time_outside = false; // make sure we don't show dialog again
	// flip boolean	
	global.grapple_is_going_up = !global.grapple_is_going_up;
	instance_destroy();
}