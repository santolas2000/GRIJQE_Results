set datafile separator ','

set title "-dE/dx (Log) (Q_1 = Q_2 = 3.8079 GeV, g = 1, m = 0.38079 GeV)"
set ylabel "-dE/dx (GeV/fm)"
set xlabel "t (fm)"
set key left top

set mxtics 2

set grid
show grid

plot[0.:0.1][0.:] "1_sqrt2/MV_dEdx.txt" using 1:2 with lines title "MV vp = 1/√2" lc rgb "red" lw 2, \
	"1.0/MV_dEdx.txt" using 1:2 with lines title "MV vp = 1.0" lc rgb "black" lw 2
