#!/bin/sh
maim -s /tmp/screenshot.png

result=$(curl -s -X POST -H "Authorization: " -F "file=@/tmp/screenshot.png" https://)
notify-send "Uploaded file to $result"
echo "$result" | xclip -selection clipboard
#wre0T#J3fjs
