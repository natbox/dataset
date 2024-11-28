set nokey
#set grid
set xlabel "value"
set ylabel "convexity"
w = "points.txt"
set terminal svg size 400,350
set output 'image.svg'
plot w using 1:2 with linespoints
