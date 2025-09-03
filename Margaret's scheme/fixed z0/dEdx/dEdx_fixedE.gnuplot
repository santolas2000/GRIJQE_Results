set datafile separator ','

set title "-dE/dx (M's scheme, matched M's ε, fixed z_0) (Q_1 = Q_2 = 2 GeV, g = 1, m = 0.2 GeV)"
set ylabel "-dE/dx (GeV/fm)"
set xlabel "t (fm)"
set key left top

set mxtics 2

set grid
show grid

plot[0.:0.1][0.:] "1_sqrt2/dEdx_forced_energy_match/MV_dEdx.txt" using 1:2 with lines title "MV vp = 1/√2" lc rgb "red", \
	"1.0/dEdx_forced_energy_match/MV_dEdx.txt" using 1:2 with lines title "MV vp = 1.0" lc rgb "black", \
	"/home/josesantos/NumericIntegration/Margarets_results/dEdx/M_dEdx_1_1_sqrt2.csv" using 1:2 with lines title "M's tau^5 vp = 1/√2" lc rgb "red" dt 2, \
	"/home/josesantos/NumericIntegration/Margarets_results/dEdx/M_dEdx_1_1.csv" using 1:2 with lines title "M's tau^5 vp = 1.0" lc rgb "black" dt 2
