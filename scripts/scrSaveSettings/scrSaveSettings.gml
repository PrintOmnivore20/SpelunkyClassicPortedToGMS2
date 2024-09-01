function scrSaveSettings(){
file = file_text_open_write("settings.cfg");
if (global.fullscreen) file_text_write_string(file, "1");
else file_text_write_string(file, "0");
file_text_writeln(file);
if (global.graphicsHigh) file_text_write_string(file, "1");
else file_text_write_string(file, "0");
file_text_writeln(file);
if (global.downToRun) file_text_write_string(file, "1");
else file_text_write_string(file, "0");
file_text_writeln(file);
if (global.gamepadOn) file_text_write_string(file, "1");
else file_text_write_string(file, "0");
file_text_writeln(file);
file_text_write_string(file, string(global.screenScale));
file_text_writeln(file);
file_text_write_string(file, string(global.musicVol));
file_text_writeln(file);
file_text_write_string(file, string(global.soundVol));
file_text_close(file);
}

/*function scrSaveSettings() {
	var _map = ds_map_create();
	
	_map[? "fullscreen"] = global.fullscreen
	_map[? "graphicsHigh"] = global.graphicsHigh
	_map[? "downToRun"] = global.downToRun
	_map[? "gamepadOn"] = global.gamepadOn
	_map[? "screenScale"] = global.screenScale
	_map[? "musicVol"] = global.musicVol
	_map[? "soundVol"] = global.soundVol
	
	var _string = json_encode(_map)
	save_string_to_file("settings.cfg",_string);
	show_debug_message(_string);
	
	ds_map_destroy(_map)
	show_debug_message("Game saved!")
}

function save_string_to_file(_filename, _string) {
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer,_filename);
	buffer_delete(_buffer);
	
}*/