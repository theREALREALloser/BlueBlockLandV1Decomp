var roomname = room_get_name(room);

if (string_letters("medievalsecret") == roomname)
    instance_create(x, y, obj_secretfound);

if (targetDoor == "A")
{
    if (hallway == 1)
        x = obj_doorA.x + (hallwaydirection * 100);
    else
        x = obj_doorA.x + 16;
    
    y = obj_doorA.y - 14;
    hallway = 0;
}

if (targetDoor == "B")
{
    if (hallway == 1)
        x = obj_doorB.x + (hallwaydirection * 100);
    else
        x = obj_doorB.x + 16;
    
    y = obj_doorB.y - 14;
    hallway = 0;
}

if (targetDoor == "C")
{
    if (hallway == 1)
        x = obj_doorC.x + (hallwaydirection * 100);
    else
        x = obj_doorC.x + 16;
    
    y = obj_doorC.y - 14;
    hallway = 0;
}

if (targetDoor == "D")
{
    if (hallway == 1)
        x = obj_doorD.x + (hallwaydirection * 100);
    else
        x = obj_doorD.x + 16;
    
    y = obj_doorD.y - 14;
    hallway = 0;
}

if (global.shroomfollow == 1)
    instance_create(x, y, obj_pizzakinshroom);

if (global.cheesefollow == 1)
    instance_create(x, y, obj_pizzakincheese);

if (global.tomatofollow == 1)
    instance_create(x, y, obj_pizzakintomato);

if (global.sausagefollow == 1)
    instance_create(x, y, obj_pizzakinsausage);

if (global.pineapplefollow == 1)
    instance_create(x, y, obj_pizzakinpineapple);

roomstartx = x;
roomstarty = y;

if (character == "N")
    scr_characterspr();
