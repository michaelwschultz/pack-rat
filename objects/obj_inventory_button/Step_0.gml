/// @description Insert description here

move_distance = starting_position - distance_to_apply;

if (object_exists(obj_inventory)) {
	with(obj_inventory) {
		// "other" here is this instance, (obj_inventory_button)
		y = other.move_distance;
	}
}

if (object_exists(obj_inventory_slot)) {
	with(obj_inventory_slot) {
		y = other.move_distance + 15;
	}
}

distance_to_apply = lerp(distance_to_apply,  distance, slide_speed)

if (is_open) {
	lock_movement()
	obj_notes.y = move_distance - 10;
	distance = 65;
} else {
	obj_notes.y = move_distance;
	distance = 0;
}
