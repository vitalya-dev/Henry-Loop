function draw_rect_width(x1, y1, x2, y2, w) {
  draw_line_width(x1, y1, x2, y1, w); // top
  draw_line_width(x1, y2, x2, y2, w); // bottom
  draw_line_width(x1, y1, x1, y2, w); // left
  draw_line_width(x2, y1, x2, y2, w); // right
}