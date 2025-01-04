if (cantcollect == 0)
{
    global.seconds += 60;
    
    with (instance_create(x, y, obj_plusseconds))
        sprite_index = spr_plus60;
    
    instance_destroy();
}
