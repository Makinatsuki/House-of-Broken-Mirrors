if point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height) == true and global.pressed == false and local_pressed == false
{
    image_index = 1
    if mouse_check_button_pressed(mb_left)
    {
        global.pressed = true
        local_pressed = true
    }
}
else if global.pressed == true and local_pressed = true
{
    if intervals > 0
    {
        intervals--
    }
    else
    {
        intervals = 60 * 0.1
        if blinks > 0
        {
            blinks -= 0.5
        }
    }
    if blinks <= 0
    {
        switch(Button_Type)
        {
            case "Start":
            {
                room_goto(Demo)
                break
            }
            case "Config":
            {
                break
            }
            case "Exit":
            {
                game_end()
                break
            }
        }
        global.pressed = false
        local_pressed = false
    }
    if blinks - floor(blinks) == 0
    {
        image_index = 2
    }
    else
    {
        image_index = 1
    }
}
else
{
    image_index = 0
}