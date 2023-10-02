item = global.inventory_list.hammer;

function run_interaction() {
	show_debug_message("interacted with " + item.name);
	
	item.on_collect()
	
	item_add(item);
	instance_destroy();
}