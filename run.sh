#!/bin/sh

cd tshock
mono --server --gc=sgen -O=all TerrariaServer.exe -world 01.wld -autocreate 2 -configpath "/tshock/config"
