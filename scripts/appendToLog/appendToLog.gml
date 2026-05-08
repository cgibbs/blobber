function appendToLog(){
	var message = argument0
	ds_list_add(obj_log.log_messages,message)
	show_debug_message(ds_list_size(obj_log.log_messages));
}