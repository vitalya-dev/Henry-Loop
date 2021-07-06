draw_self();

screen_x = x - sprite_xoffset + 41;
screen_y = y - sprite_yoffset + 44;
switch (obj_tv_tumbler.state) {
  case "ON":
    draw_set_font(fn_tv);
    draw_set_color(c_black);
    draw_text_ext(screen_x, screen_y + 45 * 0, "497 - Один номер верен и на месте", 15, 230);
    draw_text_ext(screen_x, screen_y + 45 * 1, "410 - Один номер верен но не на месте", 15, 230);
    draw_text_ext(screen_x, screen_y + 45 * 2, "105 - Два номера верны но не на месте", 15, 230);
    draw_text_ext(screen_x, screen_y + 45 * 3, "307 - Нет верных номеров", 15, 230);
    break;
  case "OFF":
    break;
}