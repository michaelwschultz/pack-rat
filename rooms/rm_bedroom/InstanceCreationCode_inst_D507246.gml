function run_interaction() {
	lock_movement()
	
	var popup = layer_get_id("Instances_popup");
	layer_set_visible(popup, true);
	
	var popup_interact = layer_get_id("Instances_popup_interact");
	layer_set_visible(popup_interact, true);
	
	var popup_outlined = layer_get_id("Instances_popup_outlined");
	layer_set_visible(popup_outlined, true);
	
	var player = layer_get_id("Instances_player");
	layer_set_visible(player, false);
}