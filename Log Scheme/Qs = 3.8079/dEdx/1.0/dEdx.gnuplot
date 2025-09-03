set datafile separator ','

set title "-dE/dx (Log) vperp=1 (Q_1 = Q_2 = 3.81 GeV, g = 1, m = 0.2 GeV)"
set ylabel "-dE/dx (GeV/fm)"
set xlabel "t (fm)"
set key left top

set mxtics 2

set grid
show grid

plot[0.:0.1][0.:] "MV_dEdx.txt" using 1:2 with lines title "Ours MV, Log scheme" lc rgb "dark-red", \
 "/home/josesantos/NumericIntegration/Margarets_results/dEdx/M_dEdx_1_1.csv" using 1:2 with lines title "Margaret's tau⁵" lc rgb "dark-chartreuse", \


