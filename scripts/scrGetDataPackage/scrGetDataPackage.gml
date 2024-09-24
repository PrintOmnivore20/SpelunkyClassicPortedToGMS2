function scrGetDataPackage(){
//Pain

var _contents = {
		cmd: "GetDataPackage",	
	}
var arr = [_contents]

aa = json_stringify(arr)

var buffer = buffer_create(string_byte_length(aa), buffer_fixed,1)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer,buffer_text,aa)

network_send_raw(global.socket, buffer, buffer_tell(buffer),network_send_text)

global.packageInitilized = true
}

function readPackage(item_id) {
	var buff = global.bufferData
for (var i = 0; i < array_length(buff); ++i)
{
		if struct_exists(buff[i], "cmd") { //checks to see if "cmd" exists within the struct specified, mostly put in to prevent a game crash.
	if (buff[i].cmd = "DataPackage") {
	
		if struct_exists(buff[i], "data") {
			global.packagefile = file_text_open_append((working_directory + "/packageData.dat"))
			file_text_write_string(global.packagefile, buff[i])
			file_text_writeln(global.packagefile)
			file_text_close(global.packagefile)
			
	}
}
}
}
}