/// @description 

// Inherit the parent event
event_inherited();

dialog.add(spr_avatar,  "My trusty ole hammer!");
dialog.add(spr_avatar, "Mom and I built this whole tree house with this.");

function do_after() {
	obj_inventory_button.is_open = true;
}