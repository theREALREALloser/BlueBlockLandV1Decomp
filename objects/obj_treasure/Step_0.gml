if (sprite_index == sprgot && obj_player.state != 22)
    instance_destroy();

if (spr == spr_cheeseblob)
{
    sprgot = 824;
    spridle = 825;
}

if (spr == spr_cheesemaker)
{
    sprgot = 810;
    spridle = 811;
}

if (sprite_index != sprgot)
    sprite_index = spridle;
