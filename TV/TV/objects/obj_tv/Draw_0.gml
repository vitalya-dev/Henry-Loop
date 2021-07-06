draw_self();

screen_x = x - sprite_xoffset + 41;
screen_y = y - sprite_yoffset + 44;

var one_number_is_correct_and_in_place = string_char_at(get_two_wrong_numbers_1(), 1) + string_char_at(code, 2) +  string_char_at(get_two_wrong_numbers_1(), 2);
var one_number_is_correct_and_in_outplace = string_char_at(get_two_wrong_numbers_1(), 1) + string_char_at(code, 3) +  string_char_at(get_two_wrong_numbers_2(), 1);
var two_number_is_correct_and_in_outplace = string_char_at(code, 3) + string_char_at(get_two_wrong_numbers_2(), 2) + string_char_at(code, 1); 
var none_number_is_correct = string_char_at(get_two_wrong_numbers_1(), 2) + string_char_at(get_two_wrong_numbers_2(), 1) + string_char_at(get_two_wrong_numbers_2(), 2);


switch (obj_tv_tumbler.state) {
  case "ON":
    draw_set_font(fn_tv);
    draw_set_color(c_black);
    draw_text_ext(screen_x, screen_y + 45 * 0, one_number_is_correct_and_in_place + " - Один номер верен и на месте", 15, 230);
    draw_text_ext(screen_x, screen_y + 45 * 1, one_number_is_correct_and_in_outplace + " - Один номер верен но не на месте", 15, 230);
    draw_text_ext(screen_x, screen_y + 45 * 2, two_number_is_correct_and_in_outplace + " - Два номера верны но не на месте", 15, 230);
    draw_text_ext(screen_x, screen_y + 45 * 3, none_number_is_correct + " - Нет верных номеров", 15, 230);
    break;
  case "OFF":
    break;
}