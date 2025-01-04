if (!instance_exists(ID))
    instance_destroy();

if (instance_exists(ID))
{
    x = ID.x;
    y = ID.y;
    image_xscale = ID.image_xscale;
    image_index = ID.image_index;
    
    with (ID)
    {
        if (object_index == obj_forknight || object_index == obj_indiancheese || object_index == obj_fencer || object_index == obj_noisey)
        {
            if (state != 92 && state != 100)
            {
                hitboxcreate = 0;
                instance_destroy(other.id);
            }
        }
        
        if (obj_player.state == 69 && (object_index == obj_peasanto || object_index == obj_ninja || object_index == obj_pizzice))
        {
            hitboxcreate = 0;
            instance_destroy(other.id);
        }
        
        if (object_index == obj_boulder)
        {
            if (hitwall == 0)
                instance_destroy(other.id);
        }
        
        if (object_index == obj_noisecrusher)
        {
            if (state != 93)
            {
                hitboxcreate = 0;
                instance_destroy(other.id);
            }
        }
        
        if (object_index == obj_peasanto || object_index == obj_ninja || object_index == obj_pizzice)
        {
            if (state != 94)
            {
                hitboxcreate = 0;
                instance_destroy(other.id);
            }
        }
    }
}
