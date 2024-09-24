function scrPreviewCheck(_locid){
	global.itemPreviewName = ""
#region Write
var _contents = {
		cmd: "LocationScouts",
		locations: [int64(0xC1A551C+_locid)]	
	}
	
	var arr = [_contents]

aa = json_stringify(arr)

var buffer = buffer_create(string_byte_length(aa), buffer_fixed,1)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer,buffer_text,aa)

network_send_raw(global.socket, buffer, buffer_tell(buffer),network_send_text)

scrReadCheck(_locid)
#endregion
}

function scrReadCheck(_locid) {
#region Read

	var data = global.bufferData

for (var i = 0; i < array_length(data); ++i)
{
		if struct_exists(data[i], "cmd") { //checks to see if "cmd" exists within the struct specified, mostly put in to prevent a game crash.
if _locid >= 0 {
	//show_debug_message("Super Ping!")
	if (data[i].cmd = "LocationInfo") {
		//show_debug_message("Ping!")
		if struct_exists(data[i], "locations") {
			//show_debug_message("Pong!")
		for (var iii = 0; iii <array_length(data[i].locations); ++iii) {
				show_debug_message(string(data[i].locations[iii]))
				show_debug_message(data[i].locations[iii].player)
				getItemName(data[i].locations[iii].item,data[i].locations[iii].player)
				global.message = string_upper(global.itemPreviewName) + string_upper(global.lastPlayerSent)
				global.messageTimer = 100
		}
		}
	}
}
}
}

#endregion

}

function getItemName(item_id) {
	show_debug_message(item_id)
	
	
}