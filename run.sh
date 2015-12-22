#!/bin/sh

cd tshock
mono --server --gc=sgen -O=all TerrariaServer.exe -world test.wld -autocreate 2 -configpath "/tshock/config.json"
