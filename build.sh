#!/bin/bash

SourceFile="main.c"
OutputFile="main.wasm"

Flags=" \
    --target=wasm32 \
    -O3 \
    -nostdlib \
    -Wl,--no-entry \
    -Wl,--export-all \
    -Wl,--export-memory \
    -Wl,--initial-memory=1048576 \
    -Wl,--max-memory=16777216 \
    -Wl,--export-table \
    -Wl,--allow-undefined \
    -o $OutputFile"

clang $Flags $SourceFile

