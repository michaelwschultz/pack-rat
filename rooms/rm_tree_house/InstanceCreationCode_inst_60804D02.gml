
event_inherited()


function run_interaction() {
	if(
		!array_contains(global.picked_up_items, "gundam_head") and
		
		// TODO: need a better way to get the current tool
		// THIS DOESN'T WORK
		obj_inventory_manager.selected_item.name == "key"
	) {
		instance_create_layer(0, 0, "Instances_static", obj_dialog_pickup_gundam);
	} else if (array_contains(global.picked_up_items, "key")) {
		instance_create_layer(0, 0, "Instances_static", obj_dialog_should_use_key);	
	} else {	
		instance_create_layer(0, 0, "Instances_static", obj_dialog_all_done);	
	}
}
