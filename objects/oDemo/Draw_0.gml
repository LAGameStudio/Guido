im_begin(10, 10, mouse_x, mouse_y, mouse_check_button(mb_left));
im_text("Immediate Mode v" + __IM_VERSION + "   " + __IM_DATE, 1, 1, fHeader);
im_newline();
draw_set_font(fHeader);
if (im_hyperlink("@jujuadams")) url_open("http://www.twitter.com/JujuAdams");
draw_set_font(-1);
im_newline();
im_newline();
im_text("Hello!");
if (im_button("Button 1", "button 1"))  show_debug_message("left");
if (im_button("")) show_debug_message("!!!");
im_text("Button 2");
if (im_button("Button 1 again", "button 1")) show_debug_message("right");
if (im_element_get_state("button 1")) show_debug_message("!!!");
im_newline();
im_newline();
im_toggle_text("floating ON :)", "floating off :(");
im_toggle_text("instance ON :)", "instance off :(", "instance_variable");
im_toggle_text("instance ON :)", "instance off :(", "instance_variable");
im_toggle_text("global ON :)", "global off :(", "global.global_variable");
im_newline();
im_toggle("element", undefined, undefined, "element");
im_toggle("element", undefined, undefined, "element");
im_newline();
im_text("element = " + string(im_element_get_value("element")));
im_newline();
im_text("instance = " + string(instance_variable));
im_newline();
im_text("global = " + string(global.global_variable));
im_newline();
im_newline();
im_slider(5.5, 20.9, 1.0, 200, "", "slider");
im_set_string_format(1, 1);
im_text(im_prev_value);
im_newline();
im_real_field(5.5, 20.9, 1.0, 150, "real_field");
im_text("= " + string(real_field));
im_newline();
im_string_field(150, true, "string_field");
im_text("= \"" + string_field + "\"");
im_newline();
im_sprite(sTest, 0);
im_sprite(sTest, 0);
//im_newline();
//im_radio("Option 1", "radio 0", "radio_option");
//im_newline();
//im_radio("Option 2", "radio 0", "radio_option");
//im_newline();
//im_radio("Option 3", "radio 0", "radio_option");
//im_newline();
//im_text("Option selected = " + string(radio_option));
im_end();