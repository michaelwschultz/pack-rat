event_inherited()

gundam_head = global.inventory_list.gundam_head;

function run_interaction() {
	var note = global.notes_list.seven;
	lock_movement();
	
	if(!array_contains(obj_inventory_manager.notes, note) and
		(global.current_tool != -1) and
		(global.current_tool.name == "helmet")
	) {
		// Show popup
		var popup = layer_get_id("Instances_gundam_popup");
		layer_set_visible(popup, true);
		
		note.on_collect();
		note_add(note);
		
		var find_item = function(_item) {
		    return (_item.name == gundam_head.name);
		}
		
		var gundam_head_index = array_find_index(obj_inventory_manager.inventory, find_item)
		array_delete(obj_inventory_manager.inventory, gundam_head_index, 1);
		
		obj_inventory_manager.gundam_made_whole = true;
		// reset current tool
		global.current_tool = -1;
		image_index = 1;
	} else {
		instance_create_layer(0, 0, "Instances_static", obj_dialog_gundam);
	}
}
