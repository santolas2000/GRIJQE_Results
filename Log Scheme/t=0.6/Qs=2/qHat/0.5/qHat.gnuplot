set datafile separator ','

set title "qHat (Log), vperp = 0.5 (Q_1 = Q_2 = 2 GeV, g = 1, m = 0.2 GeV)"
set ylabel "qHat (GeV^2/fm)"
set xlabel "t (fm)"
set key right top

set mxtics 2
#set mytics 5

set grid
show grid

plot[0.:0.6][0.:] "MV_qHat.txt" using 1:2 with lines title "Ours MV, Log scheme" lc rgb "dark-red"
