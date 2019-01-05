var dir = argument0;

var buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u16, CLIENT_SEND_MOVE);
buffer_write(buffer, buffer_u16, dir);

//Send the packet to server.
with (oMultiplayerController.client_raw)
{
    network_send_raw(socket, buffer, buffer_tell(buffer));
}

//Delete the buffer.
buffer_delete(buffer);