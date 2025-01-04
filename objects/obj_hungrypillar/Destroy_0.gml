if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create(x, y, obj_bangeffect);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    
    with (obj_camera)
    {
        shake_mag = 3;
        shake_mag_acc = 3 / room_speed;
    }
    
    instance_destroy();
    
    with (instance_create(x, y, obj_sausageman_dead))
        sprite_index = spr_hungrypillar_angry;
    
    scr_soundeffect(sfx_killenemy);
    instance_create(x, y + 600, obj_itspizzatime);
    global.panic = 1;
    
    switch (room)
    {
        case floor1_room11:
            global.minutes = 2;
            global.seconds = 30;
            break;
        
        case floor2_roomtreasure:
            global.minutes = 2;
            global.seconds = 40;
            break;
        
        case floor3_roomtreasure:
            global.minutes = 2;
            global.seconds = 30;
            break;
        
        case floor4_roomtreasure:
            global.minutes = 2;
            global.seconds = 0;
            break;
        
        case floor5_roomtreasure:
            global.minutes = 2;
            global.seconds = 0;
            break;
    }
    
    ds_list_add(global.saveroom, id);
}
