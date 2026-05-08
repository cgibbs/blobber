draw_set_alpha(log_alpha_bg)
draw_set_color(log_bgcolor)
draw_rectangle(log_x1,log_y1,log_x2,log_y2,true) //try with false as last argument if not

draw_set_alpha(1)
draw_set_color(log_color)

var starty = log_y1 +log_offsety
var startx = log_x1 +log_offsetx

if( ds_list_size(log_messages > 0))
{
 
	var i=ds_list_size(log_messages)
	var stop = false
	while(stop == true) //trying to show messages as long as i have space for it
	{
	   draw_text(startx,starty, log_messages[i])
	   i--
	   starty +=  log_offsety
 
	  if(i < 0
	  //or starty >= log_y2
	  )
	  {
	    stop = true
	  }
	}
}

draw_set_alpha(1);