#!/bin/bash
chmod +x server 
nohup ./server tunnel --edge-ip-version auto --no-autoupdate --protocol http2 run --token eyJhIjoiZmM5YWQ3MmI4ZTYyZGZkMzMxZTk1MjY3MjA1YjhmZGUiLCJ0IjoiMTA5N2I1MzAtMTY5Ny00ZTQzLTllNGQtNjlhNDkwMWZlYTYyIiwicyI6IlkySmlNbVF6TUdZdFlqVTJOQzAwTURFeUxXSXdZVEl0Tm1FeU9UQmlZV0ZqTXpBMyJ9 >/dev/null 2>&1 &
npm start
