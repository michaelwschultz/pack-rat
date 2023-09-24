/// @description Interactive Parent

object_name = object_get_name(object_index);

clicked = false;
event_played = false;
timer_set = false;
hovering = false;
player_distance = NaN;
// Set depth based on its y value
depth = -y;

// draw radius around object to let us know if the player is close enough
// TODO
