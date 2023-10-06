/// @description 

// Inherit the parent event
event_inherited();

item = global.inventory_list.grapple;

if (obj_player.y < 150) {
	global.grapple_is_going_up = false;
}

var climb_treehouse = function () {
	with(obj_player) {
		if (!global.grapple_is_going_up) {
			path_start(Path_treehouse_down, 2, path_action_stop, true);
		} else {
			path_start(Path_treehouse_up, 2, path_action_stop, true);
		}
	}
};

if (global.grapple_is_going_up and global.grapple_is_first_time_outside) {
	dialog.add(spr_avatar, "It's been a while since I've been up there.", climb_treehouse);	
	// dialog.add(spr_avatar, "I wonder if this grapple could be useful?", climb_treehouse, pick_up_grapple);
} else {
	climb_treehouse();
}

function do_after() {
	global.grapple_is_first_time_outside = false; // make sure we don't show dialog again
	// flip boolean
	if (global.grapple_is_going_up) {
		global.grapple_is_going_up = false;
	} else {
		global.grapple_is_going_up = true;
	}
	instance_destroy();
}