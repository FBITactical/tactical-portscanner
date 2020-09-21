#!/bin/bash
clear
line="\e[1;31m[*]\e[0m"

echo -e "$line Starting Install ..."
echo -e "$line This May Take A Moment.."
chmod 777 tactical-portscanner.py
command -v python > /dev/null 2>&1 || apt install -y python
command -v python3 > /dev/null 2>&1 || apt install -y python
pip3 install -r tactical-portscanner-modules
python3 -m pip install -r tactical-portscanner-modules
echo -e "$line Install Complete"
echo -e "$line Use : python3 tactical-portscanner.py"
