switch (state) {
  case "ON":
    if (array_length(data) > 12000) {
      array_delete(data, 0, 6000);
    }
    break;
  case "OFF":
    if (array_length(data) > 0) {
      array_resize(data, 0);
    }
    scale = 1
    offset = 0
    break;
 }