set datafile separator ','

set title "qHat (Log) (Q_1 = Q_2 = 2 GeV, g = 1, m = 0.2 GeV)"
set ylabel "qHat (GeV^2/fm)"
set xlabel "t (fm)"
set key left top

set mxtics 2
set mytics 5

set grid
show grid

plot[0.:0.1][0.:] "0.8/MV_qHat.txt" using 1:2 with lines title "MV vp = 0.8" lc rgb "green", \
	"0.9/MV_qHat.txt" using 1:2 with lines title "MV vp = 0.9" lc rgb "blue", \
	"1.0/MV_qHat.txt" using 1:2 with lines title "MV vp = 1.0" lc rgb "black", \
	"/home/josesantos/NumericIntegration/Margarets_results/qHat/M_qHat_1_0.8.csv" using 1:2 with lines title "M's tau^5 vp = 0.8" lc rgb "green" dt 2, \
	"/home/josesantos/NumericIntegration/Margarets_results/qHat/M_qHat_1_0.9.csv" using 1:2 with lines title "M's tau^5 vp = 0.9" lc rgb "blue" dt 2, \
	"/home/josesantos/NumericIntegration/Margarets_results/qHat/M_qHat_1_1.csv" using 1:2 with lines title "M's tau^5 vp = 1.0" lc rgb "black" dt 2, \
