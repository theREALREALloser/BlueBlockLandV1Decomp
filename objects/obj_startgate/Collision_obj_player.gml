with (obj_player1)
{
    if (key_up && (state == 0 || state == 68 || state == 69 || state == 89) && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != 63 && state != 60)
    {
        backtohubstartx = x;
        backtohubstarty = y;
        backtohubroom = room;
        mach2 = 0;
        obj_camera.chargecamera = 0;
        image_index = 0;
        state = 63;
    }
}

if (floor(obj_player1.image_index) == (obj_player1.image_number - 1) && obj_player1.state == 63)
{
    with (obj_player1)
    {
        targetDoor = other.targetDoor;
        targetRoom = other.targetRoom;
        
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout);
    }
}
