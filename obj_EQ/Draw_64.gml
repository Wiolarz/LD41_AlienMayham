/// @description Insert description here
// You can write your code in this editor
var _r = (display_get_gui_width()/2);//*3;
var _g = 1;
var _l = (display_get_gui_width()/2 - 120);



draw_set_font(font);

a = "Weapon: ";
b = "Ammo: ";
c = "Iron: ";
d = "Energy: ";
e = "Uran: ";


//draw_text(99, -5, string(global.DAY));

draw_text(_l - 350, _g , a);

//draw_text(_r + 200, _g , string(global.Weapon));

draw_text(_l - 200, _g, b);

draw_text(_r - 200, _g, string(global.Ammo));



draw_text(_l , _g , c);

//draw_text(_r, _g , string());	//debug info
draw_text(_r, _g , string(global.HAPE));

draw_text(_l  + 200, _g , d);

draw_text(_r + 200, _g, string(global.Energy));





draw_text(_l + 400, _g , e);

draw_text(_r + 400, _g , string(global.Uran));



//draw_text(_c, _d, d);
//draw_text(_a, _b, Weapon);