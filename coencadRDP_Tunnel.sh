#! /bin/bash


# Get the input into a variable

input=$1

# Set veriables

echo "SSH Username:"
read username

echo "SSH Password:"
read password

echo "System Username:"
read susername

echo "System Password:"
read spassword

echo "Host to connect to:"
read connhost

# Create tunnel
screen -d -m ssh $username@nc3.coencadcloud.nl -p 10222 -L 3389:$connhost:3389

# Login to the server with RDP

xfreerdp /u:$susername /p:$spassword /v:127.0.0.1 /f
