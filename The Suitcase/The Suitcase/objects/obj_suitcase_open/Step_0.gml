var gcounter_x1 = x - 28;
var gcounter_y1 = y;
var gcounter_x2 = gcounter_x1 + sprite_get_width(spr_gcounter_suitcase);
var gcounter_y2 = gcounter_y1 + sprite_get_height(spr_gcounter_suitcase);


var oscilloscope_x1 = x + 12;
var oscilloscope_y1 = y;
var oscilloscope_x2 = oscilloscope_x1 + sprite_get_width(spr_oscilloscope_suitcase);
var oscilloscope_y2 = oscilloscope_y1 + sprite_get_height(spr_oscilloscope_suitcase);


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