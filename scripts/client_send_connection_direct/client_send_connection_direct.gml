var other_number = argument0;

var buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u16, CLIENT_SEND_INFO_DIRECT);
buffer_write(buffer, buffer_string, name);
buffer_write(buffer, buffer_u16, number);
buffer_write(buffer, buffer_u16, other_number);

//Send the packet to server.
with (oMultiplayerController.client_raw)
{
    network_send_raw(socket, buffer, buffer_tell(buffer));
}

//Delete the buffer.
buffer_delete(buffer);