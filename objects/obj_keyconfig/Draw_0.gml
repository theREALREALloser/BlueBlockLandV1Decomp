if (key_select == -1)
    draw_text_colour(380, 50, "BACK", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(380, 50, "BACK", c_white, c_white, c_white, c_white, 0.5);

if (key_select == 0)
    draw_text_colour(420, 50, "UP", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 50, "UP", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 50, scr_keyname(global.key_up));
draw_sprite(spr_gamepadbuttons, 0, 560, 50);

if (key_select == 1)
    draw_text_colour(420, 100, "DOWN", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 100, "DOWN", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 100, scr_keyname(global.key_down));
draw_sprite(spr_gamepadbuttons, 0, 560, 100);

if (key_select == 2)
    draw_text_colour(420, 150, "RIGHT", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 150, "RIGHT", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 150, scr_keyname(global.key_right));
draw_sprite(spr_gamepadbuttons, 0, 560, 150);

if (key_select == 3)
    draw_text_colour(420, 200, "LEFT", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 200, "LEFT", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 200, scr_keyname(global.key_left));
draw_sprite(spr_gamepadbuttons, 0, 560, 200);

if (key_select == 4)
    draw_text_colour(420, 250, "JUMP", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 250, "JUMP", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 250, scr_keyname(global.key_jump));
draw_sprite(spr_gamepadbuttons, 0, 560, 250);

if (key_select == 5)
    draw_text_colour(420, 300, "GRAB", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 300, "GRAB", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 300, scr_keyname(global.key_slap));
draw_sprite(spr_gamepadbuttons, 0, 560, 300);

if (key_select == 6)
    draw_text_colour(420, 350, "WEAPON", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 350, "WEAPON", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 350, scr_keyname(global.key_shoot));
draw_sprite(spr_gamepadbuttons, 0, 560, 350);

if (key_select == 7)
    draw_text_colour(420, 400, "DASH", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 400, "DASH", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 400, scr_keyname(global.key_attack));
draw_sprite(spr_gamepadbuttons, 0, 560, 400);

if (key_select == 8)
    draw_text_colour(420, 450, "TAUNT", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 450, "TAUNT", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 450, scr_keyname(global.key_taunt));
draw_sprite(spr_gamepadbuttons, 0, 560, 450);

if (key_select == 9)
    draw_text_colour(420, 500, "PAUSE", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(420, 500, "PAUSE", c_white, c_white, c_white, c_white, 0.5);

draw_text(540, 500, scr_keyname(global.key_start));
draw_sprite(spr_gamepadbuttons, 0, 560, 500);
