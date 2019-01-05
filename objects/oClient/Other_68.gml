/// @description Insert description here
// You can write your code in this editor
//Get the id of the socket.
var socket_id = ds_map_find_value(async_load, "id");

//Check if socket is our socket.
if (socket_id == socket)
{
    //Check the type of network event.
    var type = ds_map_find_value(async_load, "type");
    switch (type)
    {
        //Connect Event.
        //case network_type_non_blocking_connect:
		//case network_type_connect:
        //{
        //    var success = ds_map_find_value(async_load, "succeeded");
        //    if (success == 0)
        //    {            
        //        //Failure connection. Retry.
        //        global.connected_to_server = false;
        //    }
        //    else
        //    {
        //        //Succesful connection.
        //        global.connected_to_server = true;
        //        client_raw_send_connection();
        //        client_raw_send_ping();
        //        alarm[0] = -1;
        //        alarm[1] = room_seconds(1);
        //    }
        //    break;
        //}
   
        //Incomming Data Event.
        case network_type_data:
        {
			var read_buffer = ds_map_find_value(async_load, "buffer");
			client_handle_message(read_buffer);
            //Get the packet from the server.
			
			
            break;
        }
    }
}