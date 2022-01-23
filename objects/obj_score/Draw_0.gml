// objects use draw_self(); function if there are no draw events specifically defined
// draw events happen once a frame like step events

// var is used for variables that disapear/don't exist at end of event
var cx = camera_get_view_x(view_camera[0]); // "where camera is on x axis"
var cy = camera_get_view_y(view_camera[0]); // "where camera is on y axis"

var cw = camera_get_view_width(view_camera[0]); // camera's width


// string converts that score variable to a string type


draw_set_font(fnt_score);
draw_set_color(c_red);

draw_text(cx + cw / 2, cy + 25, string(thescore)  ); 

