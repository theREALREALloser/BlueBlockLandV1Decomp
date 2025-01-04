var lay_id = layer_get_id("Backgrounds_1");
var back_id = layer_background_get_id(lay_id);
var lay_id2 = layer_get_id("Backgrounds_2");
var back_id2 = layer_background_get_id(lay_id2);
var lay_id3 = layer_get_id("Backgrounds_3");
var back_id3 = layer_background_get_id(lay_id3);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 959)
    layer_background_sprite(back_id, 958);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 956)
    layer_background_sprite(back_id, 957);

if (global.panic == 1 && layer_background_get_sprite(back_id3) == 961)
    layer_background_sprite(back_id3, 962);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 925)
    layer_background_sprite(back_id, 926);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 928)
    layer_background_sprite(back_id, 929);

if (global.panic == 1 && layer_background_get_sprite(back_id2) == 930)
    layer_background_sprite(back_id2, 931);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 993)
    layer_background_sprite(back_id, 994);

if (global.panic == 1 && layer_background_get_sprite(back_id2) == 991)
    layer_background_sprite(back_id2, 992);

if (global.panic == 1 && layer_background_get_sprite(back_id3) == 989)
    layer_background_sprite(back_id3, 990);
