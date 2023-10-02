// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_add(_item){
	array_push(obj_inventory_manager.inventory, _item);
}

function note_add(_item){
	array_push(obj_inventory_manager.notes, _item);
}

// TODO: add a way to remove these
//function item_remove(_item){
//	array_(obj_inventory_manager.inventory, _item)
//}