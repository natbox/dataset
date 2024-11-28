set nokey
#set grid
set xlabel "yielded stress"
set ylabel "temperature"
w = "inner.txt"
set terminal svg size 400,350
set output 'image.svg'
plot w using 1:2 with linespoints
