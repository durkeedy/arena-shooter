/// @description Sync to queued (new) clients
while(ds_queue_size(clientnumstosync) > 0)
{
	var other_num = ds_queue_dequeue(clientnumstosync);
	client_send_connection_direct(other_num);
}