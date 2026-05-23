if(!instance_exists(target)) exit;
x = lerp(x, target.x, 0.6);
y = lerp(y, target.y, 0.6);
camera_set_view_pos(view_camera[0], x-cam_w/2, y-cam_h/2);