set datafile separator ','

set title "qHat (Log), vperp = 0.8 (Q_1 = Q_2 = 3.81 GeV, g = 1, m = 0.2 GeV)"
set ylabel "qHat (GeV^2/fm)"
set xlabel "t (fm)"
set key left top

set mxtics 2
set mytics 5

set grid
show grid

plot[0.:0.1][0.:] "MV_qHat.txt" using 1:2 with lines title "Ours MV, Log scheme" lc rgb "dark-red", \
	"/home/josesantos/NumericIntegration/Margarets_results/qHat/M_qHat_1_0.8.csv" using 1:2 with lines title "Margaret's tau^5" lc rgb "dark-chartreuse"
