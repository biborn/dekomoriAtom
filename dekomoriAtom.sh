# Written by Muhammad Aliff Muazzam (Tester2009)
# https://facebook.com/Tester2009
# https://github.com/alepcat1710
# Date: August 26, 2015
# Tested on: Ubuntu 14.04 LTS
# Feel free to use. Do not change copyright, mastah !

: '
The MIT License (MIT)
Copyright (c) [2015] [Muhammad Aliff Muazzam]
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
'
clear &&
echo "	dekomoriAtom 0.1 Copyright (c) 2015 Muhammad Aliff Muazzam August 26, 2015"
echo "	First on ubuntu? Let me install basic software!"
echo "	Written by @Tester2009"
echo "	Make my life easier !"

echo "	Before proceed. Please makesure you have a STABLE INTERNET CONNECTION! PROCEED ? [Y/n]"
read confirm
if [ "$confirm" = "y" ]
then

echo "	Updating system.."
echo "	Please enter your password to continue"
sudo apt-get update &&
sudo apt-get upgrade &&
sudo apt-get autoremove &&
sudo apt-get clean &&
sudo apt-get install -f &&
sudo apt-get dist-upgrade &&
echo "	Done update! Now proceed to installing.."

echo "	Install ubuntu restricted extras? (You can play restricted formats using Totem and Rythmbox) [Y/n]"
read restricted_prompt
if [ "$restricted_prompt" = "y" ]
then
	sudo apt-get install ubuntu-restricted-extras
	echo "	Ubuntu restricted extras installed!"
fi

echo "	Installing VLC" &&
sudo apt-get install vlc &&
echo "	VLC installed!"

echo "	Installing GIMP" &&
sudo apt-get install gimp &&
echo "	GIMP installed!"

echo "	Do you want to install Aircrack-ng? [Y/n]"
read aircrack_prompt
if [ "$aircrack_prompt" = "y" ]
then
	sudo apt-get install aircrack-ng
	echo "	Aircrack-ng installed!"
fi

echo "	Last thing..."
echo "	Cleaning up..."
sudo apt-get -f install &&
sudo apt-get autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean
echo "	dekomoriAtom completed!"

# if user dont want to continue
else echo "You can try dekomoriAtom next time :')"
fi
