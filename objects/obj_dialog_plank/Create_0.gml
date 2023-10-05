/// @description 

// Inherit the parent event
event_inherited();

var hammer = global.inventory_list.hammer;
var two = global.notes_list.two;

if (!array_contains(obj_inventory_manager.inventory, hammer)) {
	dialog.add(spr_avatar, "I'll need something to pry up this floor board.");
} else if (!array_contains(obj_inventory_manager.notes, two)) {
	dialog.add(spr_avatar, "What if I use my hammer?!");
} else {
	dialog.add(spr_avatar, "Looks like I've done all I can do here.");
}

function do_after() {}