#!/bin/bash

echo "Content-Type: text/html"
echo
echo "<html><head><title>test cgi</title></head>"
echo "<body>"
cal | sed -z 's/\n/\<br\>/g'
echo "</body>"
echo "</html>"
