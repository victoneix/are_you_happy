var _room = instance_position(cam_target.x, cam_target.y, obj_room);
cam_x = cam_target.x - cam_h / 2;
cam_y = cam_target.y - cam_v / 2;

if(_room){
	cam_min_x = _room.x;
	cam_max_x = _room.x + (cam_h * _room.image_xscale) - cam_h;
	cam_min_y = _room.y;
	cam_max_y = _room.y + (cam_v * _room.image_yscale) - cam_v;
}

cam_x = clamp(cam_x, cam_min_x, cam_max_x);
cam_y = clamp(cam_y, cam_min_y, cam_max_y);

camera_set_view_pos(view_camera[0], cam_x, cam_y);