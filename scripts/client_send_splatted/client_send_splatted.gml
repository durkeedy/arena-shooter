var team = argument0;
var instance = argument1;
var splatter = argument2;

var buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u16, CLIENT_SEND_SPLATTED);
buffer_write(buffer, buffer_u16, team);
buffer_write(buffer, buffer_u32, instance);
buffer_write(buffer, buffer_u16, splatter);

//Send the packet to server.
with (oMultiplayerController.client_raw)
{
    network_send_raw(socket, buffer, buffer_tell(buffer));
}

//Delete the buffer.
buffer_delete(buffer);