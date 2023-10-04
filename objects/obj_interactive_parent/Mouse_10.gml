/// @description Insert description here

if (!hovering and !global.movement_locked) or (!hovering and global.current_tool != -1) {
	hovering = true;
	layer_add_instance("Instances_outlined", id);
}