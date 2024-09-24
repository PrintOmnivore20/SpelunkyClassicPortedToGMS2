function scrSaveGlobals(){

	var _map = ds_map_create();
	
	_map[? "\nminesUnlocked"] = global.minesUnlocked
	_map[? "minesSent"] = global.minesSent
	_map[? "jungleUnlocked"] = global.jungleUnlocked
	_map[? "jungleSent"] = global.jungleSent
	_map[? "iceCavesUnlocked"] = global.iceCavesUnlocked
	_map[? "iceCavesSent"] = global.iceCavesSent
	_map[? "templeUnlocked"] = global.templeUnlocked
	_map[? "templeSent"] = global.templeSent
	
	_map[? "snakeKilled"] = global.snakeKilled
	_map[? "spiderKilled"] = global.spiderKilled
	_map[? "giantSpiderKilled"] = global.giantSpiderKilled
	_map[? "batKilled"] = global.batKilled 
	_map[? "cavemanKilled"] = global.cavemanKilled
	_map[? "shopkeeperKilled"] = global.shopkeeperKilled
	_map[? "scarabCollected"] = global.scarabCollected
	_map[? "damselCollected"] = global.damselCollected
	_map[? "mantrapKilled"] = global.mantrapKilled
	_map[? "frogKilled"] = global.frogKilled
	_map[? "fireFrogKilled"] = global.fireFrogKilled
	_map[? "zombieKilled"] = global.zombieKilled
	_map[? "yetiKilled"] = global.yetiKilled
	_map[? "ufoKilled"] = global.ufoKilled
	_map[? "alienLordKilled"] = global.alienLordKilled
	_map[? "hawkmenKilled"] = global.hawkmenKilled
	_map[? "mummyKilled"] = global.mummyKilled 
	_map[? "olmecKilled"] = global.olmecKilled //??
	
	_map[? "bombBagUnlocked"] = global.bombBagUnlocked
	_map[? "bombBagCollected"] = global.bombBagCollected
	_map[? "bombBoxUnlocked"] = global.bombBoxUnlocked
	_map[? "bombBoxCollected"] = global.bombBoxCollected
	_map[? "ropePileUnlocked"] = global.ropePileUnlocked
	_map[? "ropePileCollected"] = global.ropePileCollected
	_map[? "pasteUnlocked"] = global.pasteUnlocked
	_map[? "pasteCollected"] = global.pasteCollected
	_map[? "pistolUnlocked"] = global.pistolUnlocked
	_map[? "pistolCollected"] = global.pistolCollected
	_map[? "bowUnlocked"] = global.bowUnlocked
	_map[? "bowCollected"] = global.bowCollected
	_map[? "shotgunCollected"] = global.shotgunCollected
	_map[? "shotgunUnlocked"] = global.shotgunUnlocked
	_map[? "climbingGlovesUnlocked"] = global.climbingGlovesUnlocked
	_map[? "climbingGlovesCollected"] = global.climbingGlovesCollected
	_map[? "mittCollected"] = global.mittCollected
	_map[? "mittUnlocked"] = global.mittUnlocked
	_map[? "teleporterCollected"] = global.teleporterCollected
	_map[? "teleporterUnlocked"] = global.teleporterUnlocked
	_map[? "capeUnlocked"] = global.capeUnlocked
	_map[? "capeCollected"] = global.capeCollected
	_map[? "jetpackUnlocked"] = global.jetpackUnlocked
	_map[? "jetpackCollected"] = global.jetpackCollected
	_map[? "compassUnlocked"] = global.compassUnlocked
	_map[? "compassCollected"] = global.compassCollected
	_map[? "springShoesUnlocked"] = global.springShoesUnlocked
	_map[? "springShoesCollected"] = global.springShoesCollected
	_map[? "spikeShoesUnlocked"] = global.spikeShoesUnlocked
	_map[? "spikeShoesCollected"] = global.spikeShoesCollected
	_map[? "parachuteUnlocked"] = global.parachuteUnlocked
	_map[? "parachuteCollected"] = global.parachuteCollected
	_map[? "glassesUnlocked"] = global.glassesUnlocked 
	_map[? "glassesCollected"] = global.glassesCollected
	_map[? "macheteUnlocked"] = global.macheteUnlocked
	_map[? "macheteCollected"] = global.macheteCollected
	_map[? "mattockUnlocked"] = global.mattockUnlocked
	_map[? "mattockCollected"] = global.mattockCollected
	_map[? "webGunUnlocked"] = global.webGunUnlocked
	_map[? "webGunCollected"] = global.webGunCollected
	
	_map[? "goldenKeyCollected"] = global.goldenKeyCollected
	_map[? "goldenKeyUnlocked"] = global.goldenKeyUnlocked
	_map[? "udjatEyeCollected"] = global.udjatEyeCollected
	_map[? "udjatEyeUnlocked"] = global.udjatEyeUnlocked
	_map[? "ankhCharmUnlocked"] = global.ankhCharmUnlocked
	_map[? "ankhCharmCollected"] = global.ankhCharmCollected
	_map[? "hedjetUnlocked"] = global.hedjetUnlocked
	_map[? "hedjetCollected"] = global.hedjetCollected
	_map[? "sceptreUnlocked"] = global.sceptreUnlocked
	_map[? "sceptreCollected"] = global.sceptreCollected
	
	_map[? "goldIdolCollected"] = global.goldIdolCollected
	_map[? "crystalIdolCollected"] = global.crystalIdolCollected
	
	_map[? "CoGVisited"] = global.CoGVisited
	
	_map[? "APGoal"] = global.APGoal
	_map[? "stealingAllowed"] = global.stealingAllowed
	_map[? "ghostTimer"] = global.ghostTimer
	_map[? "randomGhostTimer"] = global.randomGhostTimer
	
	
	var _string = json_encode(_map)
	save_string_to_file("ap_data.sav",_string);
	//show_debug_message(_string);
	
	ds_map_destroy(_map)
	show_debug_message("Archipelago progress saved!")
}