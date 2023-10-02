item = global.inventory_list.grapple;

function run_interaction() {
	show_debug_message("interacted with " + item.name);
	
	item.on_collect()
	
	item_add(item);
	instance_destroy();
}