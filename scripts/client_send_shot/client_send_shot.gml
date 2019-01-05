var paint = argument0;
var tox = argument1;
var toy = argument2;
var range = argument3;

var buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u16, CLIENT_SEND_SHOT);
buffer_write(buffer, buffer_u16, paint);
buffer_write(buffer, buffer_u16, tox);
buffer_write(buffer, buffer_u16, toy);
buffer_write(buffer, buffer_u16, range);

//Send the packet to server.
with (oMultiplayerController.client_raw)
{
    network_send_raw(socket, buffer, buffer_tell(buffer));
}

//Delete the buffer.
buffer_delete(buffer);