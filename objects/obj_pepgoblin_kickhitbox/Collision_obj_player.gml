with (other.id)
{
    if (instance_exists(other.baddieID) && state != 1)
    {
        state = 1;
        xscale = other.baddieID.image_xscale;
        movespeed = 12;
        vsp = 0;
    }
}
