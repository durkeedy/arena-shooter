//Create variables.
//var ip_address = global.ip_address;

//Sends account data.
var buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u16, CLIENT_CONNECT);
buffer_write(buffer, buffer_string, client_raw.name);

//Send the packet to server.
with (oMultiplayerController.client_raw)
{
    network_send_raw(socket, buffer, buffer_tell(buffer));
}

//Delete the buffer.
buffer_delete(buffer);