function update_obtains(apItem, senderName){
	get_name(senderName) //Gets the name of the id specified
	if apItem = int64(0xC1A551C+0) { // Easiest way to show it, just gets the ID and says you got the item.
	global.message = "YOU RECEIVED MINES FROM " + string_upper(global.lastPlayerSent)
	global.messageTimer = 200
	global.lastItemSent = "Mines"
	set_items();
	}
	if apItem = int64(0xC1A551C+1) { // Easiest way to show it, just gets the ID and says you got the item.
	show_debug_message("You received Jungle from " + global.lastPlayerSent)
	global.lastItemSent = "Jungle"
	set_items();
	}
}

function set_items(){ //A special function made to be a nice, clean representation of updating items.
	switch(global.lastItemSent) {
		case "Mines":
		
		break;
		case "Jungle":
		
		break;
		case "Ice Caves":
		
		break;
		case "Temple":
		
		break;
	}
	scrSaveAP()
}
