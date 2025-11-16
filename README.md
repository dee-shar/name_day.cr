# name_day.cr
Web-API for [nameday.abalin.net](https://nameday.abalin.net/) which provides name days for various countries

## Example
```cr
require "./name_day"

name_day = NameDay.new
today_namedays = name_day.get_today_namedays()
puts today_namedays
```
