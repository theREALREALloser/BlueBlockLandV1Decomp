function scr_getinput()
{
	key_up = keyboard_check(global.key_up) || gamepad_button_check(0, global.key_upC);
	key_up2 = keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(0, global.key_upC);
	key_right = keyboard_check(global.key_right) || gamepad_button_check(0, global.key_rightC);
	key_right2 = keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(0, global.key_rightC);
	key_left = -(keyboard_check(global.key_left) || gamepad_button_check(0, global.key_leftC));
	key_left2 = -(keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(0, global.key_leftC));
	key_down = keyboard_check(global.key_down) || gamepad_button_check(0, global.key_downC);
	key_down2 = keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(0, global.key_downC);
	key_jump = keyboard_check_pressed(global.key_jump) || gamepad_button_check_pressed(0, global.key_jumpC);
	key_jump2 = keyboard_check(global.key_jump) || gamepad_button_check(0, global.key_jumpC);
	key_slap = keyboard_check(global.key_slap) || gamepad_button_check(0, global.key_slapC);
	key_slap2 = keyboard_check_pressed(global.key_slap) || gamepad_button_check_pressed(0, global.key_slapC);
	key_taunt = -1;
	key_taunt2 = -1;
	key_attack = keyboard_check(global.key_attack) || gamepad_button_check(0, global.key_attackC) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_shoulderrb);
	key_attack2 = keyboard_check_pressed(global.key_attack) || gamepad_button_check_pressed(0, global.key_attackC) || gamepad_button_check_pressed(0, gp_face2) || gamepad_button_check_pressed(0, gp_shoulderrb);
	key_shoot = keyboard_check(global.key_shoot) || gamepad_button_check(0, global.key_shootC);
	key_shoot2 = keyboard_check_pressed(global.key_shoot) || gamepad_button_check_pressed(0, global.key_shootC);
	key_start = keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(0, global.key_startC);
	key_escape = keyboard_check_pressed(vk_escape) || gamepad_button_check(0, gp_select);
	gamepad_set_axis_deadzone(0, 0.5);
	
	if (keyboard_check_pressed(vk_f1))
	{
	    global.panic = 1;
	    
	    with (obj_tv)
	    {
	        message = "ESCAPE ACTIVATED";
	        showtext = 1;
	        alarm[0] = 150;
	    }
	}
	
	if (keyboard_check_pressed(vk_f2) && obj_player1.character == "P")
	{
	    obj_player.character = "N";
	    
	    with (obj_tv)
	    {
	        message = "PLAYER 1 IS NOISE";
	        showtext = 1;
	        alarm[0] = 150;
	    }
	    
	    with (obj_player1)
	        scr_characterspr();
	}
	
	if (keyboard_check_pressed(vk_f2) && obj_player1.character == "N")
	{
	    obj_player1.character = "P";
	    
	    with (obj_tv)
	    {
	        message = "PLAYER 1 IS PEPPINO";
	        showtext = 1;
	        alarm[0] = 150;
	    }
	    
	    with (obj_player1)
	        scr_characterspr();
	}
	
	if (keyboard_check_pressed(vk_f3))
	{
	    obj_player1.state = 35;
	    audio_stop_all();
	    scr_soundeffect(mu_timesup);
	    room = timesuproom;
	    obj_player1.image_index = 0;
	}
	
	if (keyboard_check_pressed(vk_f4))
	{
	    with (obj_tv)
	    {
	        message = "PLUS 100 POINTS";
	        showtext = 1;
	        alarm[0] = 150;
	    }
	    
	    global.collect += 100;
	}
	
	if (keyboard_check_pressed(vk_f5))
	{
	    with (obj_tv)
	    {
	        message = "MINUS 100 POINTS";
	        showtext = 1;
	        alarm[0] = 150;
	    }
	    
	    if (global.collect >= 100)
	        global.collect -= 100;
	    else
	        global.collect = 0;
	}
}
