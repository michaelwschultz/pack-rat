function run_interaction() {
	var note = global.notes_list.four;
	lock_movement();
	
	if(!array_contains(obj_inventory_manager.notes, note)) {
		// Show popup
		var popup = layer_get_id("Instances_popup");
		layer_set_visible(popup, true);
		
		note.on_collect();
		note_add(note);
	}
}