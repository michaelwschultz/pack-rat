/// @description Insert description here
move_distance = starting_position - distance_to_apply;

obj_inventory.y = move_distance;
obj_inventory_slot.y = move_distance + 15;
obj_inventory_combo_slot.y = move_distance + 15;

distance_to_apply = lerp(distance_to_apply,  distance, slide_speed)

if (is_open) {
	lock_movement()
	obj_notes.y = move_distance - 10;
	distance = 65;
} else {
	obj_notes.y = move_distance;
	distance = 0;
}
