var read_buffer = argument0;
while(true)
{
	//var size = buffer_tell(read_buffer);
	//show_debug_message(string(size));
    var constant = buffer_read(read_buffer, buffer_u16);
    switch (constant)
    {
		///Other client connected 1000
		case OTHER_CLIENT_CONNECT:
			//var size = buffer_tell(read_buffer);
			//show_debug_message(string(size));
			var other_name = buffer_read(read_buffer, buffer_string);
			if(other_name == name)
			{
				number = buffer_read(read_buffer, buffer_u16);
			}
			else
			{
				var other_number = buffer_read(read_buffer, buffer_u16);
				oMultiplayerController.clients[other_number] = instance_create_layer(window_get_width()/2, window_get_height()/2, "Players", oOtherPlayerLegs);
				oMultiplayerController.clients[other_number].name = other_name;
				oMultiplayerController.clients[other_number].number = other_number;
				//ds_queue_enqueue(clientnumstosync, other_number);
				//alarm[2] = room_seconds(3);
				client_send_connection_direct(other_number);
			}
			//var size = buffer_tell(read_buffer);
			//show_debug_message(string(size));
		break;
				
		///Receive info from already connected clients 1001
		case RECEIVE_INFO_DIRECT:
			//var size = buffer_tell(read_buffer);
			//show_debug_message(string(size));
			var sender_name = buffer_read(read_buffer, buffer_string);
			var sender_number = buffer_read(read_buffer, buffer_u16);
			//var size = buffer_tell(read_buffer);
			//show_debug_message(string(size));
			oMultiplayerController.clients[sender_number] = instance_create_layer(window_get_width()/2, window_get_height()/2, "Players", oOtherPlayerLegs);
			oMultiplayerController.clients[sender_number].name = sender_name;
			oMultiplayerController.clients[sender_number].number = sender_number;
		break;
		
		///Receive move from other players 1002
		case RECEIVE_MOVE:
			var dir = buffer_read(read_buffer, buffer_u16);
			var sender_num = buffer_read(read_buffer, buffer_u16);
			
			move_other_player(sender_num, dir);
		break;
		
		//Other client disconnected 1003
		case RECEIVE_DISCONNECT:
			var num_to_disconnect = buffer_read(read_buffer, buffer_u16);
			
			disconnect_player(num_to_disconnect);
		break;
           
        // 1050 = Recive Ping
        case 1050:
        {            
            //Update variables.
            ping = ping_step;
            alarm[0] = -1;
            alarm[1] = room_seconds(1); //Send again in 1 second.
            break;
        }
        
		//Shot from other player 1006
		case RECEIVE_SHOT:
			var paint = buffer_read(read_buffer, buffer_u16);
			var tox = buffer_read(read_buffer, buffer_u16);
			var toy = buffer_read(read_buffer, buffer_u16);
			var range = buffer_read(read_buffer, buffer_u16);
			var shot_by = buffer_read(read_buffer, buffer_u16);
			
			create_shot_from_player(paint, tox, toy, range, shot_by);
		
		break;
           
        // 1007 = Recive Server Ping
        case 1007:
        {            
            //Create buffer.
            var buffer = buffer_create(128, buffer_grow, 1);
            buffer_seek(buffer, buffer_seek_start, 0);
            buffer_write(buffer , buffer_u16, SERVER_PING);
               
            //Return ping to client.
            network_send_raw(socket, buffer, buffer_tell(buffer));
            buffer_delete(buffer);
            break;
        }

        //// 1008 = Recive Players Online
        //case 1008:
        //{            
        //    //Recive player online data.
        //    var players_online = buffer_read(read_buffer, buffer_s32);
               
        //    //Update global.
        //    global.players_online = players_online;
        //    break;
        //}
           
        //// 1009 = Disconnected From Server
        //case 1009:
        //{
        //    //Returns to main menu.
        //    event_user_ext(ctr_multiplayer, 0);
        //    room_goto(rm_mainmenu);
        //    break;
        //}
           
        //// 1010 = Victory
        //case 1010:
        //{
        //    //Wins the game.
        //    event_user_ext(obj_match, 0);
        //    suicide();
        //    break;
        //}            
    }
       
    //Breaks
	if(buffer_tell(read_buffer) == buffer_get_size(read_buffer))
	{
		break;
	}
}