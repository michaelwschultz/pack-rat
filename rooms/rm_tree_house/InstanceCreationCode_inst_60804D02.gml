gundam_head = global.inventory_list.gundam_head;
key = global.inventory_list.key;

function run_interaction() {
	if(
		!array_contains(obj_inventory_manager.inventory, gundam_head) and
		(global.current_tool != -1) and
		global.current_tool.name == "key"
	) {
		// add to collection
		gundam_head.on_collect()
		item_add(gundam_head)
		obj_inventory_button.is_open = true;

		// reset current tool
		global.current_tool = -1;

		var find_item = function(_item) {
		    return (_item.name == key.name);
		}
		var key_index = array_find_index(obj_inventory_manager.inventory, find_item)
		array_delete(obj_inventory_manager.inventory, key_index, 1);

	} else if (array_contains(obj_inventory_manager.inventory, gundam_head)) {	
		instance_create_layer(0, 0, "Instances_static", obj_dialog_all_done);	
	} else {
		instance_create_layer(0, 0, "Instances_static", obj_dialog_should_use_key);	
	}
}
