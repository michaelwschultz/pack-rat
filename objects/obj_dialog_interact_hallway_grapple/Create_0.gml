/// @description 

// Inherit the parent event
event_inherited();

item = global.inventory_list.grapple;

var climb_table = function () {
	with(obj_player) {
		if (!global.grapple_is_going_up) {
			path_start(Path_hallway_down, 2, path_action_stop, true);
		} else {
			path_start(Path_hallway_up, 2, path_action_stop, true);
		}
	}
};

if (global.grapple_is_going_up and global.grapple_is_first_time_in_hallway) {
	dialog.add(spr_avatar, "Been a while since I snuck some flowers for mom.", climb_table);	
	// dialog.add(spr_avatar, "I wonder if this grapple could be useful?", climb_treehouse, pick_up_grapple);
} else {
	climb_table();
}

function do_after() {
	global.grapple_is_first_time_in_hallway = false; // make sure we don't show dialog again
	if (global.grapple_is_going_up) {
		global.grapple_is_going_up = false;
	} else {
		global.grapple_is_going_up = true;
	}
	instance_destroy();
}