/// @description draw boarder

if (hovering) {
	layer_add_instance("Instances_outlined", id)
} else {
	layer_add_instance("Instances_interact", id)
}

// Draw the object's sprite
draw_self();
