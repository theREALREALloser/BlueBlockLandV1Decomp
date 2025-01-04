global.pizzacoin += 1;
obj_player.key_particles = 1;
scr_sound(sound_pizzacoin);
obj_player.alarm[7] = 30;
instance_destroy();
