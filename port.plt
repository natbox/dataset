#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#                            |
#         FM-VABE            |  Fluidmotion: Thermoelectric Control Engineering
#           400              |  www.fluidmotion.at
#                            |
#-------------------------------------------------------------------------------
#   Copyright (C) 2024 Fluidmotion Mechatronics GmbH
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
set nokey
#set grid
set xlabel "value"
set ylabel "convexity"
w = "points.txt"
set terminal svg size 400,350
set output 'image.svg'
plot w using 1:2 with linespoints
