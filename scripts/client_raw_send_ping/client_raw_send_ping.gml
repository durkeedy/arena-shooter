//Sends ping constant.
var buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u16, CLIENT_PING);

//Send the packet to server.
with (oMultiplayerController.client_raw)
{
    ping_step = 0;
    network_send_raw(socket, buffer, buffer_tell(buffer));
    alarm[0] = ping_timeout;
}

//Delete the buffer.
buffer_delete(buffer);