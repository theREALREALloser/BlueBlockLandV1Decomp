if (!audio_is_playing(mu_pizzatime) && global.panic == 1)
{
    audio_stop_all();
    scr_sound(mu_pizzatime);
}
