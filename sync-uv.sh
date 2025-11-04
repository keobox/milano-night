#!/bin/sh

# Use the first time the project is used."

if command -v uv &> /dev/null
then
    echo "'uv' command is available on this system."
    uv --version
    uv venv -p python3.12 .venv
    uv sync
else
    echo "Error: 'uv' command not found."
    echo "Please install 'uv' to proceed."
    exit 1
fi
