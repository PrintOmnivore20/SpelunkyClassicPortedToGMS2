function get_name(p_id){
	//gets the name from the Player ID specified.
	
	var data = global.bufferData

for (var i = 0; i < array_length(data); ++i)
{
	if struct_exists(data[i], "cmd") //checks to see if "cmd" exists within the struct specified, mostly put in to prevent a game crash.
if p_id != 0 {
	if (data[i].cmd = "Connected") {
		if struct_exists(data[i], "players") {
		for (var iii = 0; iii <array_length(data[i].players); ++iii) {
				show_debug_message("Player: " + string(data[i].players[iii].alias))	
				global.lastPlayerSent = string(data[i].players[iii].alias) //Change if you want! just how I do it.
		}
		}
	}
}
}
}
