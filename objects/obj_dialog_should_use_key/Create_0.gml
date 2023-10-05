/// @description 

// Inherit the parent event
event_inherited();

var key = global.inventory_list.key;

if (!array_contains(obj_inventory_manager.inventory, key)) {
	dialog.add(spr_avatar, "I should look for a key. I probably left it in another room.");
} else {
	dialog.add(spr_avatar, "I wonder if this key works...");
}

function do_after() {}