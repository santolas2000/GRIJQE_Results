set datafile separator ','

set title "dEdx vp = 1 (Log Scheme) (g = 1)"
set ylabel "-dEdx (GeV/fm)"
set xlabel "t (fm)"
set key left top

set mxtics 2
set mytics 5

set grid
show grid

plot[0.:0.6][0.:] "Qs = 2.6, m = 0.26/dEdx/1.0/MV_dEdx.txt" using 1:2 with lines title "Qs = 2.6 GeV, m = Qs/10" lc rgb "red", \
	"Qs = 3.635, m = 0.3635/dEdx/1.0/up to t=0.6/MV_dEdx.txt" using 1:2 with lines title "Qs = 3.635 GeV, m = Qs/10" lc rgb "blue", \
	"/home/josesantos/NumericIntegration/Margarets_results/dEdx/M_dEdx_1_1.csv" using 1:2 with lines title "M's tau^5" lc rgb "black"
    #"Qs = 2.6/dEdx/1.0/MV_dEdx.txt" using 1:2 with lines title "Qs = 2.6 GeV, m = 0.2 GeV" lc rgb "red", \
	#"Qs = 3.675/dEdx/1.0/MV_dEdx.txt" using 1:2 with lines title "Qs = 3.675 GeV, m = 0.2 GeV" lc rgb "blue", \
