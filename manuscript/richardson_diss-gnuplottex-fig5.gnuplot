set terminal latex rotate
set output 'richardson_diss-gnuplottex-fig5.tex'
unset key
set size 1,1
set xlabel "Time before present, Ma" rotate by 90
set ylabel "Volume Flux (km$^3$ Myr$^{-1}$)"
set xrange [350:0]
set y2tics 0.5
set ytics 0.5
set xtics 100
plot "data/Arsia_Mons_MIN_VOLUME_CORRECTED_time_predict_crater_neighbor.dat" using 1:2 with lines lt 4, "data/Arsia_Mons_MIN_VOLUME_CORRECTED_time_predict_crater_neighbor.dat" using 1:4 with lines lt 4, "data/Arsia_Mons_MIN_VOLUME_CORRECTED_time_predict_crater_neighbor.dat" using 1:3 with lines lt 5
