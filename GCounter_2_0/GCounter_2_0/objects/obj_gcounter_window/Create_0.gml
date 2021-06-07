event_inherited();

gcounter = instance_create_layer(x, y, layer, obj_gcounter);
gcounter.depth = depth - 1;