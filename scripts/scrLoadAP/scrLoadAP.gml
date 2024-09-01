function scrLoadAP(){
var _file = "archipelago.cfg";
if (file_exists(_file))
{
	var _json = load_json_from_file(_file);
	global.server = _json[?"server"]
	global.port = _json[?"port"]
	global.name = _json[?"name"]
	global.password = _json[?"password"]
	
	
	ds_map_destroy(_json)
	return true
}
else {
	show_debug_message("No AP config in this slot!\nThe Game will run as normal.")
	return false
}

}

function load_json_from_file(_filename)
{
	var _buffer = buffer_load(_filename)
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	var _json = json_decode(_string);
	return _json;
}