/// @description 

// Inherit the parent event
event_inherited();

item = global.inventory_list.gundam_head;

dialog.add(spr_avatar, "I've been looking every where for this!");
dialog.add(spr_avatar, "Time to make you whole again. " + global.fnt_symbol_heart);

function do_after() {
	item.on_collect()
	item_add(item);
	obj_inventory_button.is_open = true;
}