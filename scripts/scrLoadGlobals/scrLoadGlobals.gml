function scrLoadGlobals(){
var _file = "ap_data.sav";
if (file_exists(_file))
{
	var _json = load_json_from_file(_file);
	var _map = _json 
	
	global.minesUnlocked = _map[? "minesUnlocked"]
	global.minesSent = _map[? "minesSent"]
	global.jungleUnlocked = _map[? "jungleUnlocked"]
	global.jungleSent = _map[? "jungleSent"]
	global.iceCavesUnlocked = _map[? "iceCavesUnlocked"]
	global.iceCavesSent = _map[? "iceCavesSent"]
	global.templeUnlocked = _map[? "templeUnlocked"]
	global.templeSent = _map[? "templeSent"]
	
	global.snakeKilled = _map[? "snakeKilled"]
	global.spiderKilled = _map[? "spiderKilled"]
	global.giantSpiderKilled = _map[? "giantSpiderKilled"]
	global.batKilled = _map[? "batKilled"]
	global.cavemanKilled = _map[? "cavemanKilled"]
	global.shopkeeperKilled = _map[? "shopkeeperKilled"]
	global.scarabCollected = _map[? "scarabCollected"]
	global.damselCollected = _map[? "damselCollected"]
	global.mantrapKilled = _map[? "mantrapKilled"]
	global.frogKilled = _map[? "frogKilled"]
	global.fireFrogKilled = _map[? "fireFrogKilled"]
	global.zombieKilled = _map[? "zombieKilled"]
	global.yetiKilled = _map[? "yetiKilled"]
	global.ufoKilled = _map[? "ufoKilled"]
	global.alienLordKilled = _map[? "alienLordKilled"]
	global.hawkmenKilled = _map[? "hawkmenKilled"]
	global.mummyKilled = _map[? "mummyKilled"]
	global.olmecKilled = _map[? "olmecKilled"] //??
	
	global.bombBagUnlocked = _map[? "bombBagUnlocked"]
	global.bombBagCollected = _map[? "bombBagCollected"]
	global.bombBoxUnlocked = _map[? "bombBoxUnlocked"]
	global.bombBoxCollected = _map[? "bombBoxCollected"]
	global.ropePileUnlocked = _map[? "ropePileUnlocked"]
	global.ropePileCollected = _map[? "ropePileCollected"]
	global.pasteUnlocked = _map[? "pasteUnlocked"]
	global.pasteCollected = _map[? "pasteCollected"]
	global.pistolUnlocked = _map[? "pistolUnlocked"]
	global.pistolCollected = _map[? "pistolCollected"]
	global.bowUnlocked = _map[? "bowUnlocked"]
	global.bowCollected = _map[? "bowCollected"]
	global.shotgunCollected = _map[? "shotgunCollected"]
	global.shotgunUnlocked =_map[? "shotgunUnlocked"]
	global.climbingGlovesUnlocked =_map[? "climbingGlovesUnlocked"]
	global.climbingGlovesCollected =_map[? "climbingGlovesCollected"]
	global.mittCollected =_map[? "mittCollected"]
	global.mittUnlocked =_map[? "mittUnlocked"]
	global.teleporterCollected = _map[? "teleporterCollected"]
	global.teleporterUnlocked = _map[? "teleporterUnlocked"]
	global.capeUnlocked = _map[? "capeUnlocked"]
	global.capeCollected = _map[? "capeCollected"]
	global.jetpackUnlocked = _map[? "jetpackUnlocked"]
	global.jetpackCollected =_map[? "jetpackCollected"]
	global.compassUnlocked =_map[? "compassUnlocked"]
	global.compassCollected = _map[? "compassCollected"]
	global.springShoesUnlocked = _map[? "springShoesUnlocked"]
	global.springShoesCollected = _map[? "springShoesCollected"]
	global.spikeShoesUnlocked = _map[? "spikeShoesUnlocked"]
	global.spikeShoesCollected = _map[? "spikeShoesCollected"]
	global.parachuteUnlocked = _map[? "parachuteUnlocked"]
	global.parachuteCollected = _map[? "parachuteCollected"]
	global.glassesUnlocked = _map[? "glassesUnlocked"]
	global.glassesCollected = _map[? "glassesCollected"]
	global.macheteUnlocked = _map[? "macheteUnlocked"]
	global.macheteCollected = _map[? "macheteCollected"]
	global.mattockUnlocked = _map[? "mattockUnlocked"]
	global.mattockCollected = _map[? "mattockCollected"]
	global.webGunUnlocked = _map[? "webGunUnlocked"]
	global.webGunCollected = _map[? "webGunCollected"]
	
	global.goldenKeyCollected =_map[? "goldenKeyCollected"]
	global.goldenKeyUnlocked =_map[? "goldenKeyUnlocked"]
	global.udjatEyeCollected =_map[? "udjatEyeCollected"]
	global.udjatEyeUnlocked =_map[? "udjatEyeUnlocked"]
	global.ankhCharmUnlocked = _map[? "ankhCharmUnlocked"]
	global.ankhCharmCollected = _map[? "ankhCharmCollected"]
	global.hedjetUnlocked =_map[? "hedjetUnlocked"]
	global.hedjetCollected =_map[? "hedjetCollected"]
	global.sceptreUnlocked = _map[? "sceptreUnlocked"]
	global.sceptreCollected = _map[? "sceptreCollected"]
	
	global.goldIdolCollected =_map[? "goldIdolCollected"]
	global.crystalIdolCollected =_map[? "crystalIdolCollected"]
	
	global.CoGVisited = _map[? "CoGVisited"]
	
	global.APGoal = _map[? "APGoal"]
	global.stealingAllowed = _map[? "stealingAllowed"]
	global.ghostTimer = _map[? "ghostTimer"]
	global.randomGhostTimer = _map[? "randomGhostTimer"]
	
	ds_map_destroy(_json)
	destroySaveFiles()
	return true
	
}
else {
	show_message("No data found! Are you loading the right file?")
	return false
}

}

function destroySaveFiles() {
	if global.CoGVisited = 1 {
		if (show_question("You are about to load a complete file. \nDo you want me to refresh the files for the next run?")) {
			file_delete("ap_data.sav")
			if file_exists("archipelago.cfg") {
				file_delete("archipelago.cfg")	
			}
		}
	}
}
