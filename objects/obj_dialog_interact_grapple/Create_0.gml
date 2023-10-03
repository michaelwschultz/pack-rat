/// @description 

// Inherit the parent event
event_inherited();


var pick_up_grapple = function () {
	item_add(global.inventory_list.grapple)
	instance_destroy();
}

dialog.add(spr_avatar, "It's been a while since I've been up there.");
dialog.add(spr_avatar, "I wonder if this grapple could be useful?", pick_up_grapple);


function do_after() {
	obj_inventory_button.is_open = true;
}