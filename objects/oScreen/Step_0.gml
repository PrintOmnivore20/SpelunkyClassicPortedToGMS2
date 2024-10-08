#region bad
/// @description NEW

screen_w = 320 //* global.screenScale//browser_height*(960/720)
screen_h = 240 //* global.screenScale //browser_height



if (not surface_exists(pSurf)) pSurf = surface_create(screen_w, screen_h);
if (not surface_exists(screen)) screen = surface_create(screen_w, screen_h);
if (not surface_exists(darkSurf)) darkSurf = surface_create(screen_w, screen_h);

window_set_size(screen_w*screen_scale,screen_h*screen_scale)
surface_resize(screen,screen_w*screen_scale,screen_h*screen_scale)
surface_resize(application_surface,screen_w*screen_scale,screen_h*screen_scale)
display_set_gui_size(screen_w*screen_scale,screen_h*screen_scale)


//show_debug_message("1")

if (checkBombPressed())
{
    if (paused and global.plife > 0 and isLevel())
    {
        instance_activate_all();
        paused = false;
		surface_reset_target();
        with oPlayer1
        {
            if (facing == 18) xVel = -3;
            else xVel = 3;
            yVel = -6;
            global.plife = -99;
        }
    
        if (SS_IsSoundPlaying(global.musTitle)) SS_SetSoundVol(global.musTitle, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musCave)) SS_SetSoundVol(global.musCave, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musLush)) SS_SetSoundVol(global.musLush, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musIce)) SS_SetSoundVol(global.musIce, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musTemple)) SS_SetSoundVol(global.musTemple, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musBoss)) SS_SetSoundVol(global.musBoss, 2000 + 8000 * (global.musicVol/18));
        
        if (not global.hasAnkh) stopAllMusic();
    }
}

else if (checkRopePressed())
{
    if (paused)
        game_end2();
}
else if (checkStartPressed())
{
    if (not paused and canPause)
    {
        if (instance_exists(oPlayer1))
        {
            if (not oPlayer1.dead)
            {
              // surface_set_target(pSurf);
              // if (global.darkLevel) draw_set_alpha(1);
             // else draw_set_alpha(0.9)
               // draw_set_color(c_black);
                
				//draw_rectangle(0, 0, screen_w*screen_scale, screen_h*screen_scale, false);
                draw_set_alpha(1);
                if (SS_IsSoundPlaying(global.musTitle)) SS_SetSoundVol(global.musTitle, 0);
                if (SS_IsSoundPlaying(global.musCave)) SS_SetSoundVol(global.musCave, 0);
                if (SS_IsSoundPlaying(global.musLush)) SS_SetSoundVol(global.musLush, 0);
                if (SS_IsSoundPlaying(global.musIce)) SS_SetSoundVol(global.musIce, 0);
                if (SS_IsSoundPlaying(global.musTemple)) SS_SetSoundVol(global.musTemple, 0);
                if (SS_IsSoundPlaying(global.musBoss)) SS_SetSoundVol(global.musBoss, 0);
                py = oPlayer1.y;
                instance_deactivate_all(true);
                instance_activate_object(oGamepad);
                instance_activate_object(oNAL);
				if (global.drawHUD = true) {
				instance_activate_object(oGame)
				}
				//global.drawHUD = false
                paused = true;
				
            }
        }
    }
    else
    {
        instance_activate_all();
        if (SS_IsSoundPlaying(global.musTitle)) SS_SetSoundVol(global.musTitle, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musCave)) SS_SetSoundVol(global.musCave, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musLush)) SS_SetSoundVol(global.musLush, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musIce)) SS_SetSoundVol(global.musIce, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musTemple)) SS_SetSoundVol(global.musTemple, 2000 + 8000 * (global.musicVol/18));
        if (SS_IsSoundPlaying(global.musBoss)) SS_SetSoundVol(global.musBoss, 2000 + 8000 * (global.musicVol/18));
        paused = false;
		global.drawHUD = true
		//surface_reset_target();
		//surface_free(pSurf)
    }
}

//show_debug_message("2")

// this draws the surface on the screen
//surface_reset_target();
draw_clear(0);
if (paused)
{     
	//surface_reset_target();
	//draw_clear(0);
    //draw_surface_stretched(pSurf,screen_x,screen_y,window_get_width(),window_get_height());
    //draw_surface_stretched(pSurf,screen_x,screen_y,browser_width,browser_height);
    //draw_surface_stretched(pSurf,screen_x,screen_y,screen_w*screen_scale,screen_h*screen_scale);
    //draw_surface_stretched(pSurf,screen_x,screen_y,screen_w*screen_scale*(window_get_width()/view_wview[0]),screen_h*screen_scale*(window_get_height()/view_hview[0]));
    //draw_surface_stretched(pSurf,screen_x,screen_y,screen_w,screen_h);
 draw_set_font(global.myFont);
    draw_set_color(c_white);
    draw_text(112, 200, "PAUSED");
    draw_set_font(global.myFontSmall);
    if (isLevel())
    {
        n = 128-24;
        if (global.currLevel < 1) draw_text(40, n-24, "TUTORIAL CAVE");
        else if (isRoom("rLoadLevel")) draw_text(40, n-24, "LEVEL: " + global.customLevelName + " BY " + global.customLevelAuthor);
        else draw_text(40, n-24, "LEVEL " + string(global.currLevel));
        draw_text(40, n-16, "DEPTH: " + string(174.8*(global.currLevel-1)+(py+8)*0.34) + " FEET");
        draw_text(40, n, "MONEY: " + string(global.money));
        draw_text(40, n+8, "KILLS: " + string(global.kills));
        s = global.xtime;
        s = floor(s / 1000);
        m = 0;
        while (s > 59)
        {
            s -= 60;
            m += 1;
        }
        if (s < 10) str = "0" + string(s);
        else str = string(s);
        s2 = global.time;
        s2 = floor(s2 / 1000);
        m2 = 0;
        while (s2 > 59)
        {
            s2 -= 60;
            m2 += 1;
        }
        if (s2 < 10) str2 = "0" + string(s2);
        else str2 = string(s2);
        draw_text(40, n+16, "TIME:  " + string(m) + ":" + str + " / " + string(m2) + ":" + str2);
        draw_text(40, n+24, "SAVES: " + string(global.damsels));
        if (global.gamepadOn) draw_text(24, 216, "START-RETURN  BOMB-DIE  ROPE-QUIT/RESET");
        else draw_text(40, 216, "ESC-RETURN  F1-DIE  F9-QUIT/RESET");
    }
    else
    {
        if (global.gamepadOn) draw_text(64, 216, "START-RETURN  ROPE-QUIT/RESET");
        else draw_text(80, 216, "ESC-RETURN  F9-QUIT/RESET");
    }
	
}
else
{
    if (room == rTitle)
    {
        surface_set_target(screen);
        draw_set_alpha(oTitle.darkness);
        draw_set_color(c_black);
        draw_set_alpha(1);
        surface_reset_target();
    }
    else if (isLevel() and instance_exists(oPlayer1))
    {
        if (global.darkLevel and not oPlayer1.dead)
        {
            surface_set_target(darkSurf);
			
            draw_set_color(c_black);
            draw_rectangle(0, 0, screen_w, screen_h, false);
            draw_set_color(make_color_rgb(255-255*oLevel.darkness,255-255*oLevel.darkness,255));
			
            if (instance_exists(oLampRed))
            {
                with oPlayer1
                {
                    distToLamp = distance_to_object(oLampRed);
                    if (distToLamp <= 96)
                    {
                        draw_set_color(make_color_rgb(255-distToLamp,120-(96-distToLamp),120-(96-distToLamp)));
                    }
                }
            }
            if (instance_exists(oLampRedItem))
            {
                with oPlayer1
                {
                    distToLamp = distance_to_object(oLampRedItem);
                    if (distToLamp <= 96)
                    {
                        draw_set_color(make_color_rgb(255-distToLamp,120-(96-distToLamp),120-(96-distToLamp)));
                    }
                }
            }
            draw_circle(oPlayer1.x-view_xview[0], oPlayer1.y-view_yview[0], 96-64*oLevel.darkness, false);
            with oFlare
            {
                draw_circle(x-view_xview[0], y-view_yview[0], 96, false);
            }
            with oFlareCrate
            {
                draw_circle(x-view_xview[0], y-view_yview[0], 96, false);
            }
            with oLamp
            {
                draw_circle((x+8)-view_xview[0], (y+8)-view_yview[0], 96, false);
            }
            with oLampItem
            {
                draw_circle(x-view_xview[0], (y-4)-view_yview[0], 96, false);
            }
            with oArrowTrapLeftLit
            {
                draw_circle((x+8)-view_xview[0], (y+8)-view_yview[0], 32, false);
            }
            with oArrowTrapRightLit
            {
                draw_circle((x+8)-view_xview[0], (y+8)-view_yview[0], 32, false);
            }
            with oTikiTorch
            {
                draw_circle((x+8)-view_xview[0], (y+8)-view_yview[0], 32, false);
            }
            with oFireFrog
            {
                draw_circle((x+8)-view_xview[0], (y+8)-view_yview[0], 32, false);
            }
            with oSpearTrapLit
            {
                draw_circle((x+8)-view_xview[0], (y+8)-view_yview[0], 32, false);
            }
            with oSmashTrapLit
            {
                draw_circle((x+8)-view_xview[0], (y+8)-view_yview[0], 32, false);
            }
            with oExplosion
            {
                draw_circle(x-view_xview[0], y-view_yview[0], 96, false);
            }
            with oLava
            {
                draw_circle((x+8)-view_xview[0], (y+8)-view_yview[0], 32, false);
            }
            with oScarab
            {
                draw_circle((x+8)-view_xview[0], (y+8)-view_yview[0], 16, false);
            }
            with oGhost
            {
                draw_circle((x+16)-view_xview[0], (y+16)-view_yview[0], 64, false);
            }
            //surface_set_target(screen);
			surface_reset_target()
        }
       //screen = surface_create(screen_w,screen_h);
    }

    // DFK
     //draw_set_blend_mode_ext(bm_one, bm_zero); // According to ChevyRay, this should fix the black box glitch
    if view_current=0
    {
       // draw_surface_stretched(screen,screen_x,screen_y,browser_height*(960/720),browser_height);
        draw_surface_stretched(screen,screen_x,screen_y,screen_w*screen_scale,screen_h*screen_scale);
        draw_surface_stretched(screen,screen_x,screen_y,screen_w,screen_h);
    }
    // DFK
    // draw_set_blend_mode(bm_normal); // According to ChevyRay, this should fix the black box glitch
}


/* */
/*  */
#endregion