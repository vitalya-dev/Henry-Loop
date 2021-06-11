switch (state) {
  case "WORKING":
    if (screen.state != "ON") {
      screen.state = "ON";
    }
    break;
  case "OFF":
    if (screen.state != "OFF") {
      screen.state = "OFF";
    }
    break;
  case "PAUSE":
    break;
}

screen.x = x - 43;
screen.y = y - 21;

btn_on.x = x + 31;
btn_on.y = y + 14;

btn_pause.x = x + 18;
btn_pause.y = y;

btn_left.x = x + 18;
btn_left.y = y - 10;

btn_right.x = x + 30;
btn_right.y = y - 10;

btn_plus.x = x + 18;
btn_plus.y = y - 21;

btn_minus.x = x + 30;
btn_minus.y = y - 21;