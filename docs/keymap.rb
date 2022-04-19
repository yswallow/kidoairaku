puts "running"
# Initialize a Keyboard
kbd = Keyboard.new

kbd.init_pins(
  [ 27,26,22,2 ],   # row0, row1
  [ 4,5,6,7,8,9 ]  # col0, col1
)

kbd.add_layer :default, %i( 
    KC_A KC_B KC_C KC_D KC_E KC_F
    KC_G KC_H KC_I KC_J KC_K KC_L 
    KC_M KC_N KC_O KC_P KC_Q KC_R 
    KC_S KC_T KC_U KC_V KC_W KC_X
)

power_led = 10
gpio_init(power_led)
gpio_set_dir(power_led, 1)
gpio_put(power_led, 1)

rgb = RGB.new(
  11,    # pin number
  0,    # size of underglow pixel
  123,   # size of backlight pixel
  false # 32bit data will be sent to a pixel if true while 24bit if false
)
# Set an effect
#  `nil` or `:off` for turning off
rgb.effect = :swirl
# rgb.effect = :rainbow_mood
# Set an action when you input
#  `nil` or `:off` for turning off
# rgb.action = :thunder
# Append the feature. Will possibly be able to write `Keyboard#append(OLED.new)` in the future
kbd.append rgb

#via = VIA.new
#via.rows_size = 4
#via.cols_size = 6
#kbd.append via

kbd.start!
