reset
set termoption dash

# Axes label
unset key
set size 1,1
set logscale xy 10
set xlabel "Vent count in volcano cluster" rotate by 90
set ylabel "95% Cluster Size (sq km)"
# Axes ranges
set xrange [20:12000]
set yrange [500:4e6]
# Axes tics
#set tics scale 0.75
# Annotation
set label "10 sq km per vent" at first 1500, first 1e4 rotate by 23
set label "100 sq km per vent" at first 1500, first 1e5 rotate by 23
set label "1000 sq km per vent" at first 600, first 4e5 rotate by 23
plot "../manuscript/data/ventdens_model.dat" using 1:2 with lines lt -1,\
"../manuscript/data/ventdens_model.dat" using 1:3 with lines lt -1,\
"../manuscript/data/ventdens_model.dat" using 1:4 with lines lt -1,\
"../manuscript/data/ventdens_earth.dat" using 1:2 with points pt 7 lc rgb "dark-turquoise",\
"../manuscript/data/ventdens_venus.dat" using 1:2 with points pt 7 lc rgb "tan1",\
"../manuscript/data/ventdens_mars.dat" using 1:2 with points pt 7 lc rgb "dark-red"
set term epscairo dashed
set output "figures/defense/cluster_dens.eps"
replot
