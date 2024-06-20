#!/bin/bash
wget https://github.com/eooce/choreo-2go/raw/main/files/server
sleep 2
chmod +x web server
sleep 2
nohup ./server tunnel --edge-ip-version auto --no-autoupdate --protocol http2 run --token eyJhIjoiZmM5YWQ3MmI4ZTYyZGZkMzMxZTk1MjY3MjA1YjhmZGUiLCJ0IjoiMTA5N2I1MzAtMTY5Ny00ZTQzLTllNGQtNjlhNDkwMWZlYTYyIiwicyI6IlkySmlNbVF6TUdZdFlqVTJOQzAwTURFeUxXSXdZVEl0Tm1FeU9UQmlZV0ZqTXpBMyJ9 >/dev/null 2>&1 &
npm start
