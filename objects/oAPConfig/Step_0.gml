if status = 0 {
global.server = (get_string("What is the IP? \n(Do not include port!)",global.server))
status = 1
}

if status = 1 {
global.port = (get_string("What is the port?",global.port))
status = 2
}

if status = 2 {
	global.name = (get_string("What is the slot name?",global.name))	
	status = 3
}

if status = 3 {
	global.password = (get_string("What is the password?", global.password))
	status = 4
}

if status = 4 {
	scrSaveAP()
	room_goto(rInit)
}
