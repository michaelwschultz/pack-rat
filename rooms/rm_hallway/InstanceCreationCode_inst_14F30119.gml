function run_interaction() {
	show_debug_message("interacted with " + item.name);
	
	item_add(item);
	instance_destroy();
}