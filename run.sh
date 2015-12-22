#!/bin/bash

cd tshock
mono --server --gc=sgen -O=all TerrariaServer.exe -world test.wld -autocreate 3 -configpath "/tshock/config"
