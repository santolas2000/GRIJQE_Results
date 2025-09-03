set datafile separator ','

set title "qHat (Log) v = 1 (Q_1 = Q_2 = 3.8079 GeV, g = 1, m = 0.3879 GeV)"
set ylabel "qHat (GeV^2/fm)"
set xlabel "t (fm)"
set key right bottom

set mxtics 2
#set mytics 5

set grid
show grid

plot[0.:0.6][0.:12] "pi10_20/MV_qHat.txt" using 1:2 with lines title "MV θ = π/2" lc rgb "black", \
	"pi9_20/MV_qHat.txt" using 1:2 with lines title "MV θ = 0.9*π/2" lc rgb "blue", \
	"pi8_20/MV_qHat.txt" using 1:2 with lines title "MV θ = 0.8*π/2" lc rgb "green", \
	"pi7_20/MV_qHat.txt" using 1:2 with lines title "MV θ = 0.7*π/2" lc rgb "red", \
	"pi6_20/MV_qHat.txt" using 1:2 with lines title "MV θ = 0.6*π/2" lc rgb "orange", \
	"pi5_20/MV_qHat.txt" using 1:2 with lines title "MV θ = 0.5*π/2" lc rgb "yellow", \
	"pi4_20/MV_qHat.txt" using 1:2 with lines title "MV θ = 0.4*π/2" lc rgb "red" dt 2, \
	"pi3_20/MV_qHat.txt" using 1:2 with lines title "MV θ = 0.3*π/2" lc rgb "orange" dt 2, \
	"pi2_20/MV_qHat.txt" using 1:2 with lines title "MV θ = 0.2*π/2" lc rgb "yellow" dt 2, \
	"pi1_20/MV_qHat.txt" using 1:2 with lines title "MV θ = 0.1*π/2" lc rgb "red" dt 3, \
	#"/home/josesantos/NumericIntegration/Margarets_results/qHat/M_qHat_1_0.8.csv" using 1:2 with lines title "M's tau^5 vp = 0.8" lc rgb "green" dt 2, \
	#"/home/josesantos/NumericIntegration/Margarets_results/qHat/M_qHat_1_0.9.csv" using 1:2 with lines title "M's tau^5 vp = 0.9" lc rgb "blue" dt 2, \
	#"/home/josesantos/NumericIntegration/Margarets_results/qHat/M_qHat_1_1.csv" using 1:2 with lines title "M's tau^5 vp = 1.0" lc rgb "black" dt 2, \
