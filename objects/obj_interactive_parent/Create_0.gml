/// @description Interactive Parent

object_name = object_get_name(object_index);

clicked = false;
event_played = false;
timer_set = false;
hovering = false;
player_distance = NaN;


// Set depth based on its y value
depth = -y;


// This function should be overriden inside the instance create code
 // It will run once the user moves close to the object and interacts with it
function run_interaction() {}