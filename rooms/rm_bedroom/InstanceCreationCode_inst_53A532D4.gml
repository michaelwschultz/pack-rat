	
	function do_something() {
		var player = layer_get_id("Instances_player");
		layer_set_visible(player, true);
		
		unlock_movement();
		
		var popup_interact = layer_get_id("Instances_popup_interact");
		layer_set_visible(popup_interact, false);
	
		var popup_outlined = layer_get_id("Instances_popup_outlined");
		layer_set_visible(popup_outlined, false);
		
		var popup = layer_get_id("Instances_popup");
		layer_set_visible(popup, false);

	}