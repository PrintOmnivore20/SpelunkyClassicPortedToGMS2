function update_obtains(apItem, senderName){
	get_name(senderName) //Gets the name of the id specified
	if apItem = int64(80002) { // Easiest way to show it, just gets the ID and says you got the item.
	show_debug_message("You received Map Bombs from " + global.lastPlayerSent)
	global.lastItemSent = "Map Bombs"
	set_items();
	}
}

function set_items(){ //A special function made to be a nice, clean representation of updating items.
	switch(global.lastItemSent) {
		case "Map Bombs":
		// Put a variable here!
		break;
	}
}
