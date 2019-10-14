#!/bin/bash
strings garden.jpg | grep -o "picoCTF{.*}"
