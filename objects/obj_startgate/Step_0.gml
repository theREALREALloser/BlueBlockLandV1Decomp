if (place_meeting(x, y, obj_doorA))
    targetDoor = "A";

if (place_meeting(x, y, obj_doorB))
    targetDoor = "B";

if (place_meeting(x, y, obj_doorC))
    targetDoor = "C";

if (place_meeting(x, y, obj_doorD))
    targetDoor = "D";

if (level == "desert")
{
    if (distance_to_object(obj_player) < 200)
    {
        with (obj_tv)
        {
            message = "DESERT";
            showtext = 1;
            alarm[0] = 2;
            tvsprite = spr_tvdesert;
        }
    }
    
    var fadeRange = 256;
    var fadeThresh = 64;
    var playerDis = distance_to_object(obj_player);
    bgalpha = ((fadeThresh + fadeRange) - playerDis) / fadeRange;
    var lay_id = layer_get_id("Backgrounds_2");
    var back_id = layer_background_get_id(lay_id);
    layer_background_alpha(back_id, bgalpha);
}

if (level == "mansion")
{
    if (distance_to_object(obj_player) < 200)
    {
        with (obj_tv)
        {
            message = "MANSION";
            showtext = 1;
            alarm[0] = 2;
            tvsprite = spr_tvmansion;
        }
    }
    
    var fadeRange2 = 256;
    var fadeThresh2 = 64;
    var playerDis2 = distance_to_object(obj_player);
    bgalpha2 = ((fadeThresh2 + fadeRange2) - playerDis2) / fadeRange2;
    var lay_id2 = layer_get_id("Backgrounds_3");
    var back_id2 = layer_background_get_id(lay_id2);
    layer_background_alpha(back_id2, bgalpha2);
}

if (level == "factory")
{
    if (distance_to_object(obj_player) < 200)
    {
        with (obj_tv)
        {
            message = "FACTORY";
            showtext = 1;
            alarm[0] = 2;
            tvsprite = spr_tvfactory;
        }
    }
    
    var fadeRange3 = 256;
    var fadeThresh3 = 64;
    var playerDis3 = distance_to_object(obj_player);
    bgalpha3 = ((fadeThresh3 + fadeRange3) - playerDis3) / fadeRange3;
    var lay_id3 = layer_get_id("Backgrounds_4");
    var back_id3 = layer_background_get_id(lay_id3);
    layer_background_alpha(back_id3, bgalpha3);
}

if (level == "sewer")
{
    if (distance_to_object(obj_player) < 200)
    {
        with (obj_tv)
        {
            message = "SEWER";
            showtext = 1;
            alarm[0] = 2;
            tvsprite = spr_tvsewer;
        }
    }
    
    var fadeRange4 = 256;
    var fadeThresh4 = 64;
    var playerDis4 = distance_to_object(obj_player);
    bgalpha4 = ((fadeThresh4 + fadeRange4) - playerDis4) / fadeRange4;
    var lay_id4 = layer_get_id("Backgrounds_5");
    var back_id4 = layer_background_get_id(lay_id4);
    layer_background_alpha(back_id4, bgalpha4);
}
