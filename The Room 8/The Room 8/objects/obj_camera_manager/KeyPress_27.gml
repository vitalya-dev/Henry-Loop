switch (current_camera.state) {
  case "SHOW_WINDOW":
    camera_pop();
    break;
  case "SHOW_CREDITS":
    if (obj_credits.alarm[1] == -1)
      obj_credits.alarm[1] = 3 * fps;
    break;
	case "FOLLOW_PLAYER":
		show_menu();
		break;
	case "SHOW_MENU":
		camera_pop();
		break;
}


