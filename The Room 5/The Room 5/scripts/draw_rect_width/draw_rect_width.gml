// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_rect_width(x1, y1, x2, y2, w){
  var width = x2 - x1;
  var height = y2 - y1;
  draw_line_width(x1, y1, x1 + width, y1, w); // top
  draw_line_width(x1, y2, x1 + width, y2, 2); // bottom
  draw_line_width(0, 0, 0, window_get_height() - 2, 2); // left
  draw_line_width(window_get_width() - 2, 0, window_get_width() - 2, window_get_height() - 2, 2); // right
}