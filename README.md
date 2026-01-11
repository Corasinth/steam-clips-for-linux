# Steam Clips for Linux

## Description 

This script searches the directory where Steam game recordings are stored, uses ffmpeg to concatenate each set of `.m4s` files into a single `.mp4` file, and moves those clips into your `~/Videos` folder. This is useful when Steam's UI runs into errors in exporting your clips.

## Table of Contents

* [Features](#features)
* [Contributing](#contributing)
* [Installation](#installation)

## Installation

To use this script, you need to have ffmpeg installed. You can check if you have it installed by running `ffmpeg -version` in your terminal. You can install ffmpeg by running `sudo apt install ffmpeg` in your terminal. 

Then, download this repository as a zip using the green `Code` button (or clone the repository directly). Unzip, right click on the `steam_script.sh` file, go to `Properties`, `Permissions` and mark the file as executable. Double click to run. 

The script is configured assuming Steam is saving your game recordings in the default location. If you wish to change where the script looks for these recordings, open it up in a code or text editor and change the variable `clip_location` to the correct path.

## Features

This script names the final `.mp4` clips according to their folder names, which are date stamps. 

The script searches Steam's clips folder for all saved clips, generates an `.mp4` for each clip, and then deletes the folders with `.m4s` files. If you wish to save these, you should copy the folders elsewhere before running the script.

The main code to assemble `.m4s` files into an `.mp4` file was taken from [this steam forum page](https://steamcommunity.com/groups/SteamClientBeta/discussions/5/6400272691576744456/). 

As the poster indicates, this is not the most storage efficient method of concatenating the `.m4s` files, but it works. 


## Contributing

Contributions to this repository are welcome. 

--- 
