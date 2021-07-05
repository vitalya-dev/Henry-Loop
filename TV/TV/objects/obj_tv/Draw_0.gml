draw_self();

screen_x = x - sprite_xoffset + 41;
screen_y = y - sprite_yoffset + 44;
switch (obj_tv_tumbler.state) {
  case "ON":
    draw_set_font(fn_tv);
    draw_set_color(c_black);
    draw_text_ext(screen_x, screen_y + 45 * 0, "497 - Одна цифра правильная и на месте", 15, 230);
    draw_text_ext(screen_x, screen_y + 45 * 1, "410 - Одна цифра правильная и не на месте", 15, 230);
    draw_text_ext(screen_x, screen_y + 45 * 2, "307 - Все цифры не правильны", 15, 230);
    draw_text_ext(screen_x, screen_y + 45 * 3, "105 - Две цифры правильные и не наместе", 15, 230);
    break;
  case "OFF":
    break;
}