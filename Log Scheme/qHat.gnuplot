set datafile separator ','

set title "qHat vp = 1 (Log Scheme) (g = 1)"
set ylabel "qHat (GeV^2/fm)"
set xlabel "t (fm)"
set key left top

set mxtics 2
set mytics 5

set grid
show grid

plot[0.:0.6][0.:]	"Qs = 2.6, m = 0.26/qHat/1.0/MV_qHat.txt" using 1:2 with lines title "Qs = 2.6 GeV, m = Qs/10" lc rgb "red" ,\
	"Qs = 3.635, m = 0.3635/qHat/1.0/up to t=0.6/MV_qHat.txt" using 1:2 with lines title "Qs = 3.635 GeV, m = Qs/10" lc rgb "blue" ,\
	"/home/josesantos/NumericIntegration/Margarets_results/qHat/M_qHat_1_1.csv" using 1:2 with lines title "M's tau^5" lc rgb "black"
    #"Qs = 2.6/qHat/1.0/MV_qHat.txt" using 1:2 with lines title "Qs = 2.6 GeV, m = 0.2 GeV" lc rgb "red", \
	#"Qs = 3.675/qHat/1.0/MV_qHat.txt" using 1:2 with lines title "Qs = 3.675 GeV, m = 0.2 GeV" lc rgb "blue", \
