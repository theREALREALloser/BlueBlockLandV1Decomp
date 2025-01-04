if (selected == 0)
{
    if (obj_player.key_right2 && optionselected < 3)
        optionselected += 1;
    else if (-obj_player.key_left2 && optionselected > 0)
        optionselected -= 1;
    
    if (obj_player.key_jump2 && optionselected == 0)
    {
        obj_file1.sprite_index = spr_file1confirm;
        selected = 1;
        alarm[0] = 60;
    }
    
    if (obj_player.key_jump2 && optionselected == 1)
    {
        obj_file1.sprite_index = spr_file2confirm;
        selected = 1;
        alarm[0] = 60;
    }
    
    if (obj_player.key_jump2 && optionselected == 2)
    {
        obj_file1.sprite_index = spr_file3confirm;
        selected = 1;
        alarm[0] = 60;
    }
    
    if (obj_player.key_jump2 && optionselected == 3)
    {
        alarm[1] = 10;
        selected = 1;
    }
}

var lay_id = layer_get_id("Backgrounds_2");
var back_id = layer_background_get_id(lay_id);
layer_background_index(back_id, optionselected);
