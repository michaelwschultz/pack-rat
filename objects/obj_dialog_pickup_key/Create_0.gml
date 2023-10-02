/// @description 

// Inherit the parent event
event_inherited();

dialog.add(spr_avatar, "Hey, a key! I wonder what this one goes to.");
dialog.add(spr_avatar, "I'll just hold on to it for now.");

function do_after() {
	obj_inventory_button.is_open = true;
}