event_inherited()

note = global.notes_list.two;

function run_interaction() {
	lock_movement();
	
	if(!array_contains(obj_inventory_manager.notes, note) and
		(global.current_tool != -1) and
		(global.current_tool.name == "hammer")
	) {
		// Show popup
		var popup = layer_get_id("Instances_popup");
		layer_set_visible(popup, true);
		
		note.on_collect();
		note_add(note);
		
		// reset current tool
		global.current_tool = -1;
		sprite_index = spr_treehouse_open_plank;
	} else {	
		instance_create_layer(0, 0, "Instances_static", obj_dialog_plank);	
	}
}
