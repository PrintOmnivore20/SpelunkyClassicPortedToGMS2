startGame = false;

window_set_size(416,600)
surface_resize(application_surface,416,600)

SS_Init()

global.music = true;

global.musCave = SS_LoadSound("sound/cave.ogg", 1);
global.musTitle = SS_LoadSound("sound/title.ogg",1)
global.sndJump = SS_LoadSound("sound/jump.wav", 0);

global.spelunkyEXE = "Spelunky.exe";

global.myFont = font_add_sprite(sFont, ord(" "), false, 0);
global.myFontSmall = font_add_sprite(sFontSmall, ord(" "), false, 0);
global.fullscreen = true;
global.graphicsHigh = true;
global.downToRun = false;
if (joystick_exists(1) or joystick_exists(2)) global.gamepadOn = true;
else global.gamepadOn = false;
global.screenScale = 3;
global.musicVol = 15;
global.soundVol = 15;

global.keyUpVal = vk_up;
global.keyDownVal = vk_down;
global.keyLeftVal = vk_left;
global.keyRightVal = vk_right;
global.keyJumpVal = ord("Z");
global.keyAttackVal = ord("X");
global.keyItemVal = ord("C");
global.keyRunVal = vk_shift;
global.keyBombVal = ord("A");
global.keyRopeVal = ord("S");
global.keyFlareVal = ord("F");
global.keyPayVal = vk_space;

global.joyJumpVal = 2;
global.joyAttackVal = 1;
global.joyItemVal = 8;
global.joyRunVal = 3;
global.joyBombVal = 5;
global.joyRopeVal = 6;
global.joyFlareVal = 7;
global.joyPayVal = 4;
global.joyStartVal = 10;

global.joyid = 0

file = file_text_open_read("settings.cfg");
if (file)
{
    str = file_text_read_string(file);
    if (str == "0") global.fullscreen = false;
    file_text_readln(file);
    str = file_text_read_string(file);
    if (str == "0") global.graphicsHigh = false;
    file_text_readln(file);
    str = file_text_read_string(file);
    if (str == "0") global.downToRun = false;
    file_text_readln(file);
    str = file_text_read_string(file);
    if (str == "0") global.gamepadOn = false;
    else global.gamepadOn = true;
    file_text_readln(file);
    global.screenScale = real(file_text_read_string(file));
    file_text_readln(file);
    global.musicVol = real(file_text_read_string(file));
    file_text_readln(file);
    global.soundVol = real(file_text_read_string(file));
    file_text_close(file);
}

if (global.musicVol > 19) global.musicVol = 19;
if (global.musicVol < 2) global.musicVol = 2;
if (global.soundVol > 19) global.soundVol = 19;
if (global.soundVol < 2) global.soundVol = 2;

file = file_text_open_read("keys.cfg");
if (file)
{
    global.keyUpVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyDownVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyLeftVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyRightVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyJumpVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyAttackVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyItemVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyRunVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyBombVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyRopeVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyFlareVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.keyPayVal = real(file_text_read_string(file));
    file_text_close(file);
}

file = file_text_open_read("gamepad.cfg");
if (file)
{
    global.joyJumpVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.joyAttackVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.joyItemVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.joyRunVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.joyBombVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.joyRopeVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.joyFlareVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.joyPayVal = real(file_text_read_string(file));
    file_text_readln(file);
    global.joyStartVal = real(file_text_read_string(file));
    file_text_close(file);
}