intervals = 60 * 0.1
blinks = 8
global.pressed = false
local_pressed = false
image_speed = 0
switch(Button_Type)
{
    case "Start":
    {
        sprite_index = Start_Button
        break
    }
    default:
    {
        sprite_index = Settings_Button
    }
}