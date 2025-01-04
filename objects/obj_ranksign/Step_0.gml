ini_open("saveData.ini");
global.desertrank = ini_read_string("Ranks", "desert", "none");
global.mansionrank = ini_read_string("Ranks", "mansion", "none");
global.factoryrank = ini_read_string("Ranks", "factory", "none");
global.sewerrank = ini_read_string("Ranks", "sewer", "none");
global.freezerrank = ini_read_string("Ranks", "freezer", "none");
global.entrancerank = ini_read_string("Ranks", "entrance", "none");
global.medievalrank = ini_read_string("Ranks", "medieval", "none");
ini_close();

if (levelsign == "entrance")
{
    if (global.entrancerank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.entrancerank == "s")
        image_index = 0;
    
    if (global.entrancerank == "a")
        image_index = 1;
    
    if (global.entrancerank == "b")
        image_index = 2;
    
    if (global.entrancerank == "c")
        image_index = 3;
    
    if (global.entrancerank == "d")
        image_index = 4;
}

if (levelsign == "medieval")
{
    if (global.medievalrank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.medievalrank == "s")
        image_index = 0;
    
    if (global.medievalrank == "a")
        image_index = 1;
    
    if (global.medievalrank == "b")
        image_index = 2;
    
    if (global.medievalrank == "c")
        image_index = 3;
    
    if (global.medievalrank == "d")
        image_index = 4;
}

if (levelsign == "desert")
{
    if (global.desertrank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.desertrank == "s")
        image_index = 0;
    
    if (global.desertrank == "a")
        image_index = 1;
    
    if (global.desertrank == "b")
        image_index = 2;
    
    if (global.desertrank == "c")
        image_index = 3;
    
    if (global.desertrank == "d")
        image_index = 4;
}

if (levelsign == "mansion")
{
    if (global.mansionrank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.mansionrank == "s")
        image_index = 0;
    
    if (global.mansionrank == "a")
        image_index = 1;
    
    if (global.mansionrank == "b")
        image_index = 2;
    
    if (global.mansionrank == "c")
        image_index = 3;
    
    if (global.mansionrank == "d")
        image_index = 4;
}

if (levelsign == "factory")
{
    if (global.factoryrank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.factoryrank == "s")
        image_index = 0;
    
    if (global.factoryrank == "a")
        image_index = 1;
    
    if (global.factoryrank == "b")
        image_index = 2;
    
    if (global.factoryrank == "c")
        image_index = 3;
    
    if (global.factoryrank == "d")
        image_index = 4;
}

if (levelsign == "freezer")
{
    if (global.freezerrank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.freezerrank == "s")
        image_index = 0;
    
    if (global.freezerrank == "a")
        image_index = 1;
    
    if (global.freezerrank == "b")
        image_index = 2;
    
    if (global.freezerrank == "c")
        image_index = 3;
    
    if (global.freezerrank == "d")
        image_index = 4;
}
