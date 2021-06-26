switch (state) {
  case "ERROR":
    break;
  case "READY":
    break;
  case "INIT":
    if (obj_card.sum() != 3086) {
      state = "ERROR"; 
    } else {
      state = "READY"; 
    }
    break;
}