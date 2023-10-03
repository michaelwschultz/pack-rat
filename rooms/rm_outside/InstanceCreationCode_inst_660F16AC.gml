item = global.inventory_list.grapple;

function run_interaction() {
	show_debug_message("interacted with " + item.name);
	instance_create_layer(0, 0, "Instances_static", obj_dialog_interact_grapple);
}