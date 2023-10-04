/// @description Insert description here

if (hovering and !global.movement_locked) or (hovering and global.current_tool != -1) {
	hovering = false;
	layer_add_instance("Instances_interact", id);
}

