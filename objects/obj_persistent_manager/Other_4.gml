/// @description Persistent Manager


// Handle background music based on the room
if (room == rm_menu)
{
	// Stop the level's music
	//audio_stop_sound(snd_music_level);
	
	// Play the menu's music
	//audio_play_sound(snd_music_menu, 1, true);
}
else
{
	// Stop the menu's music
	//audio_stop_sound(snd_music_menu);
	
	// Play the level's music
	//audio_play_sound(snd_music_level, 1, true);
}
