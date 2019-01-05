/// @description Insert description here
// You can write your code in this editor
//Return to menu.
if (room = rm_boardgame)
{
    room_goto(rm_mainmenu);
    //suicide(obj_match);
}

//Disconnects the client.
global.searching = false;
global.connected_to_server = false;
oMultiplayerController.client_raw = instance_create_layer(x, y, "Instances", oClient);
instance_destroy();