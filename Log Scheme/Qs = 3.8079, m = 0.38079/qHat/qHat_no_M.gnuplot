set datafile separator ','

set title "qHat (Log) (Q_1 = Q_2 = 3.8079 GeV, g = 1, m = 0.38079 GeV)"
set ylabel "qHat (GeV^2/fm)"
set xlabel "t (fm)"
set key left top

set mxtics 2
set mytics 5

set grid
show grid

plot[0.:0.1][0.:] "0.8/MV_qHat.txt" using 1:2 with lines title "MV vp = 0.8" lc rgb "green" lw 2, \
	"0.9/MV_qHat.txt" using 1:2 with lines title "MV vp = 0.9" lc rgb "blue" lw 2, \
	"1.0/MV_qHat.txt" using 1:2 with lines title "MV vp = 1.0" lc rgb "black" lw 2
