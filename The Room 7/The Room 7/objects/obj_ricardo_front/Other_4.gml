obj_ricardo_red_button.on_click = function() {
  alarm[0] = -1;
  obj_card_small.image_xscale = obj_card_small.image_xscale < 1 ? 1 : 0;
  switch (state) {
    case "INIT":
      if (obj_card_small.image_xscale == 1) {
        state = "ERROR";
      }
      break;
    case "READY":
      if (obj_card_small.image_xscale == 1) {
        state = "ERROR";
      }
      break;
    case "ERROR":
      if (obj_card_small.image_xscale == 0) {
        state = "INIT";
        progress = 0;
      }
      break;
  }
}
