#!/bin/bash

# EZ method
#strings pico_img.png | grep -o "picoCTF{.*}"
# Real method
exiftool pico_img.png | grep -o "picoCTF{.*}"
