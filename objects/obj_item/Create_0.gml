
system = part_system_create();
type = part_type_create();
sender = part_emitter_create(system);
part_type_shape(type, pt_shape_disk);
part_type_size(type, 0.03, 0.07, 0, 0);
part_type_speed(type, 0.1,0.5, 0, 0);
part_type_alpha1(type, 0.2);
part_type_direction(type, 0, 359, 0, 0);
part_type_life(type, 5, 40);