item = global.inventory_list.grapple;

function run_interaction() {
	instance_create_layer(0, 0, "Instances_static", obj_dialog_interact_treehouse_grapple);
}