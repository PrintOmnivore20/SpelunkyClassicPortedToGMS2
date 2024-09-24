function scrSendCheck(_check){

var _contents = {
		cmd: "LocationChecks",
		locations: [int64(0xC1A551C+_check)]	
	}
var arr = [_contents]

aa = json_stringify(arr)

var buffer = buffer_create(string_byte_length(aa), buffer_fixed,1)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer,buffer_text,aa)

network_send_raw(global.socket, buffer, buffer_tell(buffer),network_send_text)

}
#region Item Listing 
/*
Worlds
Mines: 0
Jungle: 1
Ice Caves: 2
Temple: 3

Kills
Mines/General
Snake: 4
Spider: 5
Giant Spider: 6
Bat: 7
Caveman: 8
Shopkeeper: 9
Scarab: 10
Damsel: 11

Jungle
Mantrap: 12
Frog: 13
Fire Frog :14
Monkey: 15
Jiang Shi: 16

Ice Caves
Yeti: 17
UFO: 18
Alien Lord: 19

Temple
Hawk Man: 20
Mummy: 21
Olmec (???): 22

Items:
Bomb Bag: 23
Bomb Box: 24
Rope Pile: 25
Paste: 26
Pistol: 27
Bow: 28
Shotgun: 29
Climbing Gloves: 30
Pitcher's Mitt: 31
Teleporter: 32 
Cape: 33
Jetpack:34
Compass: 35
Spring Shoes: 36
Spike Shoes: 37
Parachute: 38
Spectacles: 39
Machete: 40
Mattock: 41
Web Gun: 42

Chain Items:
Udjat Eye: 43
Ankh Charm: 44
Hedjet: 45
Sceptre: 46

Gold Idol: 47
Bone Idol: 48
*/ #endregion