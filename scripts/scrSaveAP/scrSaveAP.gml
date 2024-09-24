function scrSaveAP(){

	var _map = ds_map_create();
	
	_map[? "server"] = global.server
	_map[? "port"] = int64(global.port)
	_map[? "name"] = global.name
	_map[? "password"] = global.password
	
	
	var _string = json_encode(_map)
	save_string_to_file("archipelago.cfg",_string);
	//show_debug_message(_string);
	
	ds_map_destroy(_map)
	show_debug_message("AP config saved!")
}

function save_string_to_file(_filename, _string) {
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer,_filename);
	buffer_delete(_buffer);
}