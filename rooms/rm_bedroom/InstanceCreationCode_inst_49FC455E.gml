item = global.inventory_list.key;

if (obj_inventory_manager.key_picked_up) {
	instance_destroy();	
}

function run_interaction() {
	show_debug_message("interacted with " + item.name);
	
	item.on_collect()
	item_add(item);
	
	// NOTE: this is dumb that we have to do this.
	obj_inventory_manager.key_picked_up = true;
	instance_destroy();
}
