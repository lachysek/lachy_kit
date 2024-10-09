# lachy_kit
/kit command - gives item every (set) amount of time

<b>Features:</b>
- Addable as many items as you want
- Fast and Secure (server side)
- Editable config.lua

<b>Requirements:</b>
- MySQL database (Storing when was the command executed)
- https://github.com/overextended/ox_inventory (Adding the item)
- (optional, but recommended) https://github.com/overextended/ox_lib (Sending the notification)

<b>Preview:</b>
- https://www.youtube.com/watch?v=3KJ0RdRXdaE

## Installation
- Download RELEASE
- Add </b>lachy_kit</b> to your resources folder
- Add ```ensure lachy_kit``` to your server.cfg file
- Edit the config (and if you want code) to your liking
- Restart your server

## SQL
Insert this query:
```
CREATE TABLE IF NOT EXISTS kit (
   license VARCHAR(255) PRIMARY KEY,
   last_kit_time INT
);
```
