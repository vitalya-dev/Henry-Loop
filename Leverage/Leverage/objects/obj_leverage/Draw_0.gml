switch (state) {
  case "UP":
    draw_sprite_ext(spr_leverage_up, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    break;
  case "DOWN":
    draw_sprite_ext(spr_leverage_down, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    break;
}