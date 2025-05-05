#!/bin/bash
wget https://github.com/eooce/choreo-2go/raw/main/files/server
sleep 2
chmod +x web server
sleep 2
nohup ./server tunnel --edge-ip-version auto --no-autoupdate --protocol http2 run --token eyJhIjoiZmM5YWQ3MmI4ZTYyZGZkMzMxZTk1MjY3MjA1YjhmZGUiLCJ0IjoiYzUxZDQ3MjMtZDM3OC00NjMwLTkxYmUtYTI0MzNmODIyYjM5IiwicyI6Ik9HSXlaVEE0T0dVdE9HVmxaUzAwWTJWakxUbGxaVGt0WXpNd05HUmlaR1UyWkRZNCJ9 >/dev/null 2>&1 &
npm start
