# Home-AssistantConfig
### My smart home hardware 

  - Raspberry Pi 3 Model B Plus Rev 1.3 with Raspbian GNU/Linux 10 (buster) armv7l
  - Sonoff basic switches with [tasmota](https://github.com/arendst/Tasmota) firmware 
  - Xiaomi mi gateway 2 (plan to replace by ZigBee usb-stick)
  - Aqara temperature / humidity / pressure sensor
  - Aqara water leak sensor
  - Xiaomi mi mini router
  - Xiaomi mijia kettle
  - Mi robot vacuum
  - Xiaomi xiaofang 1s camera with [dafang hack](https://github.com/EliasKotlyar/Xiaomi-Dafang-Hacks)

### Implemented scenarios

  - control home climate over program virtual thermostat 
  - house's temperature control with a gas boiler when people at home and when nobody at home 
  - kids' room temperature control with an electric ceramic heater at evenings 
  - water pump on when someone at home,  and turn off when nobody at home
  - water pump off when water leak detected and sent notification to telegram 
  - bedroom light on in the morning before phone's alarm to make it easier to wake up
  - turn on outdoor lights when somebody comes back home, and turn them off after specific time 
  - motion detection with cameras when nobody at home, send notification and picture to telegram when motion detected 
  - vacuum robot control
  - weather forecast indication 
