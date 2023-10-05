/// @description 

// Inherit the parent event
event_inherited();

var gundam_head = global.inventory_list.gundam_head;

if (array_contains(obj_inventory_manager.inventory, gundam_head)) {
	dialog.add(spr_avatar, "Been a while old friend. I found something for you.");
} else if (obj_inventory_manager.gundam_made_whole) {
	dialog.add(spr_avatar, "Lookin' good buddy.");
} else {
	dialog.add(spr_avatar, "Poor guy, still missing his head.");
}

function do_after() {}