set datafile separator ','

set title "qHat, vperp = 1 (Q_1 = Q_2 = 2 GeV, g = 1, m = 0.2 GeV)"
set ylabel "qHat (GeV^2/fm)"
set xlabel "tau (fm)"
set key right top

set mxtics 2
set mytics 5

set grid
show grid

plot[0.:0.6][0.:]  "MV_qHat.txt" using 1:2 with lines title "Ours MV, Margaret's scheme" lc rgb "dark-red", \
"MV_qHat_new.txt" using 1:2 with lines title "Ours MV, Margaret's scheme" lc rgb "green" dt 3, \
	"/home/josesantos/NumericIntegration/Margarets_results/qHat/M_qHat_1_1.csv" using 1:2 with lines title "M's tau^5" lc rgb "dark-chartreuse", \
	#"MV_qHat_old.txt" using 1:2 with lines title "Ours MV, Margaret's scheme" lc rgb "blue", \
