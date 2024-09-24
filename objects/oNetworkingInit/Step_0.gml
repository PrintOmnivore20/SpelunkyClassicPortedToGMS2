if (global.server != "") && !instance_exists(oNetworking) {
	instance_create(0,0,oNetworking)
	timer--
}

if timer <= 0 {
	readPackage()	
}