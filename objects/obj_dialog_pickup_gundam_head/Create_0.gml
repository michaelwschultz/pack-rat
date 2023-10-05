/// @description 

// Inherit the parent event
event_inherited();

var gundam_head = global.inventory_list.gundam_head;

if (!array_contains(obj_inventory_manager.inventory, gundam_head)) {
	dialog.add(spr_avatar, "My Gundam head! Been a long time old friend.");
	dialog.add(spr_avatar, "Let's make you whole again.");
} else {
	dialog.add(spr_avatar, "Nothing more in here.");
}

function do_after() {}