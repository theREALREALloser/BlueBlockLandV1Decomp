if (object_index != obj_pizzaball)
{
    with (other.id)
    {
        if (instance_exists(baddieID) && baddieID != other.id)
        {
            if ((baddieID.state == 104 && baddieID.thrown == 1) || obj_player.state == 42)
                instance_destroy(other.id);
        }
    }
}
