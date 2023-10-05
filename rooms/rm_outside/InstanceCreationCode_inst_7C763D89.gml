item = global.inventory_list.hammer;

if (array_contains(obj_inventory_manager.inventory, item)) {
	instance_destroy();	
}

function run_interaction() {
	show_debug_message("interacted with " + item.name);
	
	item.on_collect()
	
	item_add(item);
	instance_destroy();
}