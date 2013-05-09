#!/bin/bash

######################################################################
#                       INSTALLING FFADO                             #
#                                                                    #
######################################################################

#This script:
#1 - Installs ffado from default repositories
sudo apt-get install libffado2 ffado-tools ffado-mixer-qt4
#ANSWER YES WHEN ASKED IF INSTALL JACK WITH REALTIME PRIORITIES

#2 - Installs a lowlatency (PREEMPT) kernel from sources
sudo apt-get install linux-lowlatency

#3 - Adds current user to audio group in order to be able to use RT priorities
sudo usermod -a -G audio `whoami`
