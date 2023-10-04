/// @description Insert description here

if (hovering and !global.movement_locked) {
	hovering = false;
	layer_add_instance("Instances_interact", id);
}