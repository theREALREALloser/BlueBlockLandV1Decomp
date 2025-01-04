with (obj_player)
{
    if (grounded && (x > (other.x - 160) && x < (other.x + 160)) && key_up && (state == 0 || state == 68 || state == 69 || state == 89) && global.panic == 1)
    {
        if (global.collect >= global.srank)
            global.rank = "s";
        else if (global.collect > global.arank)
            global.rank = "a";
        else if (global.collect > global.brank)
            global.rank = "b";
        else if (global.collect > global.crank)
            global.rank = "c";
        else
            global.rank = "d";
        
        ini_open("saveData.ini");
        var roomname = room_get_name(room);
        
        if (string_letters(roomname) == "entrance")
        {
            ini_open("saveData.ini");
            
            if (global.entrancehighscore < global.collect)
                ini_write_string("Highscore", "entrance", global.collect);
            
            if (global.entrancehighscore < global.collect)
                ini_write_string("Highscore", "entrance", global.collect);
            
            if (global.entrancetoppin1 != 1)
                ini_write_string("Toppin", "entrance1", global.shroomfollow);
            
            if (global.entrancetoppin2 != 1)
                ini_write_string("Toppin", "entrance2", global.cheesefollow);
            
            if (global.entrancetoppin3 != 1)
                ini_write_string("Toppin", "entrance3", global.tomatofollow);
            
            if (global.entrancetoppin4 != 1)
                ini_write_string("Toppin", "entrance4", global.sausagefollow);
            
            if (global.entrancetoppin5 != 1)
                ini_write_string("Toppin", "entrance5", global.pineapplefollow);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "entrance", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "entrance", "none"))
                ini_write_string("Ranks", "entrance", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "entrance", "none") && "a" != ini_read_string("Ranks", "entrance", "none"))
                ini_write_string("Ranks", "entrance", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "entrance", "none") && "a" != ini_read_string("Ranks", "entrance", "none") && "b" != ini_read_string("Ranks", "entrance", "none"))
                ini_write_string("Ranks", "entrance", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "entrance", "none") && "a" != ini_read_string("Ranks", "entrance", "none") && "b" != ini_read_string("Ranks", "entrance", "none") && "c" != ini_read_string("Ranks", "entrance", "none"))
                ini_write_string("Ranks", "entrance", global.rank);
        }
        
        if (string_letters(roomname) == "medieval")
        {
            ini_open("saveData.ini");
            
            if (global.medievalhighscore < global.collect)
                ini_write_string("Highscore", "medieval", global.collect);
            
            if (global.medievalhighscore < global.collect)
                ini_write_string("Highscore", "medieval", global.collect);
            
            if (global.medievaltoppin1 != 1)
                ini_write_string("Toppin", "medieval1", global.shroomfollow);
            
            if (global.medievaltoppin2 != 1)
                ini_write_string("Toppin", "medieval2", global.cheesefollow);
            
            if (global.medievaltoppin3 != 1)
                ini_write_string("Toppin", "medieval3", global.tomatofollow);
            
            if (global.medievaltoppin4 != 1)
                ini_write_string("Toppin", "medieval4", global.sausagefollow);
            
            if (global.medievaltoppin5 != 1)
                ini_write_string("Toppin", "medieval5", global.pineapplefollow);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "medieval", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "medieval", "none"))
                ini_write_string("Ranks", "medieval", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "medieval", "none") && "a" != ini_read_string("Ranks", "medieval", "none"))
                ini_write_string("Ranks", "medieval", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "medieval", "none") && "a" != ini_read_string("Ranks", "medieval", "none") && "b" != ini_read_string("Ranks", "medieval", "none"))
                ini_write_string("Ranks", "medieval", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "medieval", "none") && "a" != ini_read_string("Ranks", "medieval", "none") && "b" != ini_read_string("Ranks", "medieval", "none") && "c" != ini_read_string("Ranks", "medieval", "none"))
                ini_write_string("Ranks", "medieval", global.rank);
        }
        
        if (room == floor1_room1)
        {
            ini_open("saveData.ini");
            
            if (global.deserttoppin1 != 1)
                ini_write_string("Toppin", "desert1", global.shroomfollow);
            
            if (global.deserttoppin2 != 1)
                ini_write_string("Toppin", "desert2", global.cheesefollow);
            
            if (global.deserttoppin3 != 1)
                ini_write_string("Toppin", "desert3", global.tomatofollow);
            
            if (global.deserttoppin4 != 1)
                ini_write_string("Toppin", "desert4", global.sausagefollow);
            
            if (global.deserttoppin5 != 1)
                ini_write_string("Toppin", "desert5", global.pineapplefollow);
            
            if (global.deserthighscore < global.collect)
                ini_write_string("Highscore", "desert", global.collect);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "desert", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "desert", "none"))
                ini_write_string("Ranks", "desert", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "desert", "none") && "a" != ini_read_string("Ranks", "desert", "none"))
                ini_write_string("Ranks", "desert", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "desert", "none") && "a" != ini_read_string("Ranks", "desert", "none") && "b" != ini_read_string("Ranks", "desert", "none"))
                ini_write_string("Ranks", "desert", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "desert", "none") && "a" != ini_read_string("Ranks", "desert", "none") && "b" != ini_read_string("Ranks", "desert", "none") && "c" != ini_read_string("Ranks", "desert", "none"))
                ini_write_string("Ranks", "desert", global.rank);
        }
        
        if (room == floor2_room0)
        {
            ini_open("saveData.ini");
            
            if (global.mansionhighscore < global.collect)
                ini_write_string("Highscore", "mansion", global.collect);
            
            if (global.mansiontoppin1 != 1)
                ini_write_string("Toppin", "mansion1", global.shroomfollow);
            
            if (global.mansiontoppin2 != 1)
                ini_write_string("Toppin", "mansion2", global.cheesefollow);
            
            if (global.mansiontoppin3 != 1)
                ini_write_string("Toppin", "mansion3", global.tomatofollow);
            
            if (global.mansiontoppin4 != 1)
                ini_write_string("Toppin", "mansion4", global.sausagefollow);
            
            if (global.mansiontoppin5 != 1)
                ini_write_string("Toppin", "mansion5", global.pineapplefollow);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "mansion", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "mansion", "none"))
                ini_write_string("Ranks", "mansion", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "mansion", "none") && "a" != ini_read_string("Ranks", "mansion", "none"))
                ini_write_string("Ranks", "mansion", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "mansion", "none") && "a" != ini_read_string("Ranks", "mansion", "none") && "b" != ini_read_string("Ranks", "mansion", "none"))
                ini_write_string("Ranks", "mansion", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "mansion", "none") && "a" != ini_read_string("Ranks", "mansion", "none") && "b" != ini_read_string("Ranks", "mansion", "none") && "c" != ini_read_string("Ranks", "mansion", "none"))
                ini_write_string("Ranks", "mansion", global.rank);
        }
        
        if (room == floor3_room0)
        {
            ini_open("saveData.ini");
            
            if (global.factoryhighscore < global.collect)
                ini_write_string("Highscore", "factory", global.collect);
            
            if (global.factorytoppin1 != 1)
                ini_write_string("Toppin", "factory1", global.shroomfollow);
            
            if (global.factorytoppin2 != 1)
                ini_write_string("Toppin", "factory2", global.cheesefollow);
            
            if (global.factorytoppin3 != 1)
                ini_write_string("Toppin", "factory3", global.tomatofollow);
            
            if (global.factorytoppin4 != 1)
                ini_write_string("Toppin", "factory4", global.sausagefollow);
            
            if (global.factorytoppin5 != 1)
                ini_write_string("Toppin", "factory5", global.pineapplefollow);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "factory", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "factory", "none"))
                ini_write_string("Ranks", "factory", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "factory", "none") && "a" != ini_read_string("Ranks", "factory", "none"))
                ini_write_string("Ranks", "factory", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "factory", "none") && "a" != ini_read_string("Ranks", "factory", "none") && "b" != ini_read_string("Ranks", "factory", "none"))
                ini_write_string("Ranks", "factory", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "factory", "none") && "a" != ini_read_string("Ranks", "factory", "none") && "b" != ini_read_string("Ranks", "factory", "none") && "c" != ini_read_string("Ranks", "factory", "none"))
                ini_write_string("Ranks", "factory", global.rank);
        }
        
        if (room == floor4_room0)
        {
            ini_open("saveData.ini");
            
            if (global.sewerhighscore < global.collect)
                ini_write_string("Highscore", "sewer", global.collect);
            
            if (global.sewertoppin1 != 1)
                ini_write_string("Toppin", "sewer1", global.shroomfollow);
            
            if (global.sewertoppin2 != 1)
                ini_write_string("Toppin", "sewer2", global.cheesefollow);
            
            if (global.sewertoppin3 != 1)
                ini_write_string("Toppin", "sewer3", global.tomatofollow);
            
            if (global.sewertoppin4 != 1)
                ini_write_string("Toppin", "sewer4", global.sausagefollow);
            
            if (global.sewertoppin5 != 1)
                ini_write_string("Toppin", "sewer5", global.pineapplefollow);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "sewer", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "sewer", "none"))
                ini_write_string("Ranks", "sewer", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "sewer", "none") && "a" != ini_read_string("Ranks", "sewer", "none"))
                ini_write_string("Ranks", "sewer", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "sewer", "none") && "a" != ini_read_string("Ranks", "sewer", "none") && "b" != ini_read_string("Ranks", "sewer", "none"))
                ini_write_string("Ranks", "sewer", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "sewer", "none") && "a" != ini_read_string("Ranks", "sewer", "none") && "b" != ini_read_string("Ranks", "sewer", "none") && "c" != ini_read_string("Ranks", "sewer", "none"))
                ini_write_string("Ranks", "sewer", global.rank);
        }
        
        if (room == floor5_room1)
        {
            if (global.freezerhighscore < global.collect)
                ini_write_string("Highscore", "freezer", global.collect);
            
            if (global.freezertoppin1 != 1)
                ini_write_string("Toppin", "freezer1", global.shroomfollow);
            
            if (global.freezertoppin2 != 1)
                ini_write_string("Toppin", "freezer2", global.cheesefollow);
            
            if (global.freezertoppin3 != 1)
                ini_write_string("Toppin", "freezer3", global.tomatofollow);
            
            if (global.freezertoppin4 != 1)
                ini_write_string("Toppin", "freezer4", global.sausagefollow);
            
            if (global.freezertoppin5 != 1)
                ini_write_string("Toppin", "freezer5", global.pineapplefollow);
            
            ini_open("saveData.ini");
            
            if (global.rank == "s")
                ini_write_string("Ranks", "freezer", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "freezer", "none"))
                ini_write_string("Ranks", "freezer", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "freezer", "none") && "a" != ini_read_string("Ranks", "freezer", "none"))
                ini_write_string("Ranks", "freezer", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "freezer", "none") && "a" != ini_read_string("Ranks", "freezer", "none") && "b" != ini_read_string("Ranks", "freezer", "none"))
                ini_write_string("Ranks", "freezer", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "freezer", "none") && "a" != ini_read_string("Ranks", "freezer", "none") && "b" != ini_read_string("Ranks", "freezer", "none") && "c" != ini_read_string("Ranks", "freezer", "none"))
                ini_write_string("Ranks", "freezer", global.rank);
        }
        
        ini_close();
        
        if (!instance_exists(obj_endlevelfade))
            instance_create(x, y, obj_endlevelfade);
        
        obj_player1.state = 77;
        obj_player1.sprite_index = spr_player_lookdoor;
        obj_endlevelfade.alarm[0] = 235;
        image_index = 0;
        global.panic = 0;
        
        if (global.rank == "s")
            scr_soundeffect(mu_ranks);
        
        if (global.rank == "a")
            scr_soundeffect(mu_ranka);
        
        if (global.rank == "b")
            scr_soundeffect(mu_rankb);
        
        if (global.rank == "c")
            scr_soundeffect(mu_rankc);
        
        if (global.rank == "d")
            scr_soundeffect(mu_rankd);
        
        audio_stop_sound(mu_pizzatime);
    }
}
