switch (state) {
  case "WORKING":
    break;
  case "OFF":
    break;
  case "PAUSE":
    break;
}

screen.x = x - 43;
screen.y = y - 20;
on_btn.x = x + 31;
on_btn.y = y + 15;
pause_btn.x = x + 18;
pause_btn.y = y + 1;
left_btn.x = x + 18;
left_btn.y = y - 9;
right_btn.x = x + 30;
right_btn.y = y - 9;
plus_btn.x = x + 18;
plus_btn.y = y - 20;
minus_btn.x = x + 30;
minus_btn.y = y - 20;

screen.depth = depth - 1;
on_btn.depth = depth - 1;
pause_btn.depth = depth - 1;
left_btn.depth = depth - 1;
right_btn.depth = depth - 1;
plus_btn.depth = depth - 1;
minus_btn.depth = depth - 1;
