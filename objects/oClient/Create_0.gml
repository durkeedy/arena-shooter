/// @description Insert description here
// You can write your code in this editor

//Global Variables
global.connected_to_server = false;

//Instance Variables
port = 55555;
socket = network_create_socket(network_socket_tcp);
//server_address = "127.0.0.1";
server_address = "127.0.0.1";
ping = 0;
ping_step = 0;
ping_timeout = room_seconds(3);

name = get_string("Name: ", "");
number = noone;
//Set config.
network_set_timeout(socket, 2000, 2000);
global.connected_to_server = client_connect(server_address, port, socket);
player = instance_create_layer(window_get_width()/2, window_get_height()/2, "Players", oPlayerLegs);
//network_connect_raw(socket, server_address, port);
//if(connect)
//{
//	client_raw_send_connection();
//}
clientnumstosync = ds_queue_create();