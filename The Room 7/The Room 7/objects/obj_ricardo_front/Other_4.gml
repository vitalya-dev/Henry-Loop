obj_ricardo_red_button.on_click = function() {
  obj_card_small.image_xscale = obj_card_small.image_xscale < 1 ? 1 : 0
  show_debug_message(obj_card.sum());
}
