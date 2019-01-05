/// @description Insert description here
// You can write your code in this editor
client_raw = instance_create_layer(0, 0, "Instances", oClient);
client_raw_send_connection();
client_raw_send_ping();
client_raw.alarm[0] = -1;
client_raw.alarm[1] = room_seconds(1);
clients = [];