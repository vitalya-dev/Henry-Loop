var gcounter_x1 = x - 20;
var gcounter_y1 = y - 15;
var gcounter_x2 = gcounter_x1 + sprite_get_width(spr_gcounter);
var gcounter_y2 = gcounter_y1 + sprite_get_height(spr_gcounter);


var oscilloscope_x1 = x - 6;
var oscilloscope_y1 = y - 15;
var oscilloscope_x2 = oscilloscope_x1 + sprite_get_width(spr_oscilloscope);
var oscilloscope_y2 = oscilloscope_y1 + sprite_get_height(spr_oscilloscope);


if (point_in_rectangle(mouse_x, mouse_y, gcounter_x1, gcounter_y1, gcounter_x2, gcounter_y2)) {
  gcounter_hover = true;
 } else {
  gcounter_hover = false;
}

if (point_in_rectangle(mouse_x, mouse_y, oscilloscope_x1, oscilloscope_y1, oscilloscope_x2, oscilloscope_y2)) {
  oscilloscope_hover = true;
 } else {
  oscilloscope_hover = false;
}

