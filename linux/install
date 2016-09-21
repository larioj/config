#!/bin/bash

sudo apt-get update
sudo apt-get install compizconfig-settings-manager
sudo apt-get remove dell-super-key
sudo cp ~/Linux/keyboard/us /usr/share/X11/xkb/symbols/us 
sudo cp ~/Linux/keyboard/evdev.xml /usr/share/X11/xkb/rules/evdev.xml 
sudo dpkg-reconfigure xkb-data
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo
ranger
ranger --copy-config=all
sudo apt-add-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
wget www.scala-lang.org/files/archive/scala-2.11.8.deb
sudo dpkg -i scala-2.11.8.deb 
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt
sudo apt-get install maximus
