global.collect += 25;

with (instance_create(x, y, obj_smallnumber))
    number = "25";

scr_soundeffect(sfx_collecttopping);
instance_destroy();
