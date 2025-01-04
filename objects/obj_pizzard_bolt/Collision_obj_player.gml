with (other.id)
{
    if (state != 23 && hurted == 0)
    {
        hsp = 0;
        movespeed = 0;
        state = 23;
        image_index = 0;
        sprite_index = spr_knightpep_thunder;
        instance_destroy(other.id);
    }
}
