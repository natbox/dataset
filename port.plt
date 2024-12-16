#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#                            |
#         FM-VABE            |  Fluidmotion: Thermoelectric Control Engineering
#           400              |  www.fluidmotion.lt
#                            |
#-------------------------------------------------------------------------------
#   Copyright (C) 2024 Fluidmotion Mechatronics UAB
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
set nokey
#set grid
set xlabel "thermal proxy power"
set ylabel "deduced convexity"
w = "points.txt"
set terminal svg size 400,350
set output 'image.svg'
plot w using 1:2 with linespoints
