#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#                            |
#         FM-VABE            |  Fluidmotion: Thermoelectric Control Engineering
#           400              |  www.fluidmotion.pl
#                            |
#-------------------------------------------------------------------------------
#   Copyright (C) 2024 Fluidmotion Mechatronics LLC
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
set nokey
#set grid
set xlabel "proxy power"
set ylabel "cache flow"
w = "points.txt"
set terminal svg size 400,350
set output 'image.svg'
plot w using 1:2 with linespoints
