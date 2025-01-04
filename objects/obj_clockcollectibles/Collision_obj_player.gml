if (cantcollect == 0)
{
    global.seconds += 30;
    
    with (instance_create(x, y, obj_plusseconds))
        sprite_index = spr_plus30;
    
    
    instance_destroy();
}
