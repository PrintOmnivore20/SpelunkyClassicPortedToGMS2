if (sprite_index == sSaveAndQuitPressed)
{
    scrSaveSettings();
    
	if (oCheckBox5.on = true) {
	room_goto(rMasterControllerInit)
	} else game_end()
}
sprite_index = sSaveAndQuit;
