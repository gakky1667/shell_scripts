set yrange [0:110]
set xrange [400:800]
set ylabel "Success ratio (%)"
set xlabel "Workload (%)"
set xtics 80
set ytics 20
set key right top

set terminal png
set output "temp.png"

plot "test.dat" using 1:2 notitle with linespoints,\
     "test.dat" using 1:2 title "HLBS (fixed core)" with lines,\
     "test.dat" using 1:3 notitle with linespoints,\
     "test.dat" using 1:3 title "HLBS (linux)" with lines,\
     "test.dat" using 1:4 notitle with linespoints,\
     "test.dat" using 1:4 title "Non-policy" with lines

