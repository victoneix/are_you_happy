cam_target = obj_player;

cam_h = camera_get_view_width(view_camera[0]);
cam_v = camera_get_view_height(view_camera[0]);

cam_x = cam_target.x;
cam_y = cam_target.y;

cam_min_x = 0;
cam_max_x = room_width - cam_h;
cam_min_y = 0;
cam_max_y = room_height - cam_v;