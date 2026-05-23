if(!instance_exists(target))exit;
x = lerp(x, target.x, 0.2);
y = lerp(y, target.y, 0.2);
camera_set_view_pos(view_camera[0], x-cam_h/2, y-cam_v/2);