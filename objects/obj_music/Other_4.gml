if (global.panic == 0)
{
    if (instance_exists(obj_pepperman))
    {
        audio_stop_all();
        scr_sound(mu_chase);
    }
    
    var roomname = room_get_name(room);
    
    if (string_letters(roomname) == "hubroom")
    {
        if (audio_is_paused(mu_hub))
        {
            audio_pause_all();
            audio_resume_sound(mu_hub);
        }
        
        if (!audio_is_playing(mu_hub))
        {
            audio_pause_all();
            scr_sound(mu_hub);
        }
    }
    
    if (string_letters(roomname) == "entrance")
    {
        if (audio_is_paused(mu_entrance))
        {
            audio_pause_all();
            audio_resume_sound(mu_entrance);
        }
        
        if (!audio_is_playing(mu_entrance))
        {
            audio_pause_all();
            scr_sound(mu_entrance);
        }
    }
    
    if (string_letters(roomname) == "medieval")
    {
        if (audio_is_paused(mu_medieval))
        {
            audio_pause_all();
            audio_resume_sound(mu_medieval);
        }
        
        if (!audio_is_playing(mu_medieval))
        {
            audio_pause_all();
            scr_sound(mu_medieval);
        }
    }
    
    if (string_letters(roomname) == "medievalsecret")
    {
        if (audio_is_paused(mu_secret))
        {
            audio_pause_all();
            audio_resume_sound(mu_secret);
        }
        
        if (!audio_is_playing(mu_secret))
        {
            audio_pause_all();
            scr_sound(mu_secret);
        }
    }
}
