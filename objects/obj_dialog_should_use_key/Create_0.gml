/// @description 

// Inherit the parent event
event_inherited();

if (!array_contains(global.picked_up_items, "key")) {
	dialog.add(spr_avatar, "I should look for a key. I probably left it in another room.");
} else {
	dialog.add(spr_avatar, "I wonder if this key works...");
}



function do_after() {
	
}