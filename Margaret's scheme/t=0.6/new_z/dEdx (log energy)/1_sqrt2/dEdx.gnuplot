set datafile separator ','

set title "-dE/dx (M, log scheme for ε) v=1, vperp=1/sqrt(2) (Q_1 = Q_2 = 2 GeV, g = 1, m = 0.2 GeV)"
set ylabel "-dE/dx (GeV/fm)"
set xlabel "tau (fm)"
set key left top

set mxtics 2

set grid
show grid

plot[0.:0.1][0.:] "MV_dEdx.txt" using 1:2 with lines title "MV, Margaret's scheme" lc rgb "dark-red", \
	"/home/josesantos/NumericIntegration/Margarets_results/dEdx/M_dEdx_1_1_sqrt2.csv" using 1:2 with lines title "Margaret's tau^5" lc rgb "dark-chartreuse"
