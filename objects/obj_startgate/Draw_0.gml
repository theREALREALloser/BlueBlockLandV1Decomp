draw_self();
font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(c_white);

if (place_meeting(x, y, obj_player))
{
    if (level == "desert")
        draw_text(x, y, global.deserthighscore);
    
    if (level == "mansion")
        draw_text(x, y, global.mansionhighscore);
    
    if (level == "factory")
        draw_text(x, y, global.factoryhighscore);
    
    if (level == "sewer")
        draw_text(x, y, global.sewerhighscore);
    
    if (level == "freezer")
        draw_text(x, y, global.freezerhighscore);
    
    if (level == "entrance")
        draw_text(x, y, global.entrancehighscore);
    
    if (level == "medieval")
        draw_text(x, y, global.medievalhighscore);
    
    if (level == "desert")
    {
        if (global.deserttoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.deserttoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.deserttoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.deserttoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.deserttoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
    
    if (level == "mansion")
    {
        if (global.mansiontoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.mansiontoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.mansiontoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.mansiontoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.mansiontoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
    
    if (level == "factory")
    {
        if (global.factorytoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.factorytoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.factorytoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.factorytoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.factorytoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
    
    if (level == "sewer")
    {
        if (global.sewertoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.sewertoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.sewertoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.sewertoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.sewertoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
    
    if (level == "freezer")
    {
        if (global.freezertoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.freezertoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.freezertoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.freezertoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.freezertoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
    
    if (level == "entrance")
    {
        if (global.entrancetoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.entrancetoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.entrancetoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.entrancetoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.entrancetoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
    
    if (level == "medieval")
    {
        if (global.medievaltoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.medievaltoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.medievaltoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.medievaltoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.medievaltoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
}
