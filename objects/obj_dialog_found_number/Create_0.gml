/// @description 

// Inherit the parent event
event_inherited();

if (array_length(global.notes_list) == 1) {
	dialog.add(spr_avatar, "What's this? Looks like my hand writing.");
	dialog.add(spr_avatar, "It has to be one of the numbers for my combination.");
	dialog.add(spr_avatar, "I'll right it down in my notebook so I don't forget.");
} else if (array_length(global.notes_list) == 2) {
	dialog.add(spr_avatar, "Alright! Another number. This one wasn't too tough.");
	dialog.add(spr_avatar, "That's two down, and one to go.");
} else if (array_length(global.notes_list) == 3) {
	dialog.add(spr_avatar, "Alright, that's all three numbers.");
	dialog.add(spr_avatar, "I wonder what order they go in?");
	dialog.add(spr_avatar, "Maybe I left another hint near the chest in my room.");
}


