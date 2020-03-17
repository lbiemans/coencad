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

extraparams=$1

echo "Met welke PC wil je verbinden?"
echo "+---+----------+"
echo "| 1 | Coert    |"
echo "+---+----------+"
echo "| 2 | Emiel    |"
echo "+---+----------+"
echo "| 3 | Thijs    |"
echo "+---+----------+"
echo "| 4 | Jennifer |"
echo "+---+----------+"
echo "Geef een nummer"
read "pcchoise"

# Cleanup if needed

if [[ $extraparams == "y" ]] 
 then echo "" >  ~/.config/freerdp/known_hosts
fi

case "$pcchoise" in
	1)	connhost=10.0.1.134 
		xfreerdp /u:$susername /p:$spassword /v:127.0.0.1 /f
	;;
	2)	connhost=10.0.1.134 
		xfreerdp /u:$susername /p:$spassword /v:127.0.0.1 /f
	;;
	3)	connhost=10.0.1.134 
		xfreerdp /u:$susername /p:$spassword /v:127.0.0.1 /f
	;;
	4)	connhost=10.0.1.134 
		xfreerdp /u:$susername /p:$spassword /v:127.0.0.1 /f
	;;
	*)	echo "No valid input received, please choose between 1 and 4"
	;;
esac
