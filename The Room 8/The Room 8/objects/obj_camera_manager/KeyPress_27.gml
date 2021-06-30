switch (current_camera.state) {
  case "SHOW_WINDOW":
    camera_pop();
    break;
  case "SHOW_CREDITS":
    game_end();
    break;
	case "FOLLOW_PLAYER":
		show_menu();
		break;
	case "SHOW_MENU":
		camera_pop();
		break;
}


