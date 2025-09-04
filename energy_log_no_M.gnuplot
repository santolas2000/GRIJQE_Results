set datafile separator ','

set title "Energy Density" # -- Rudimentary version of Margaret's Formula"
set ylabel "Energy Density (GeV^4)"
set xlabel "tau (fm)"
set key left bottom

set mxtics 2
set mytics 5

set grid
show grid

GeV_fm = 0.1973269804

plot [0.:0.1] [0.:] "Log Scheme/Qs = 2/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Q = 2GeV, m=0.2 GeV" lc rgb "dark-magenta" dt 2 lw 2, \
			"Log Scheme/Qs = 3.675/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Q = 3.675GeV, m=0.2 GeV" lc rgb "red" dt 2 lw 2, \
			"Log Scheme/Qs = 3.635, m = 0.3635/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Q = 3.635GeV, m=0.3635 GeV" lc rgb "dark-red" dt 2 lw 2, \
			"Log Scheme/Qs = 3.8079/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Q = 3.81GeV, m=0.2 GeV" lc rgb "blue" dt 2 lw 2, \
			"Log Scheme/Qs = 3.8079, m = 0.38079/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Q = 3.81GeV, m=0.381 GeV" lc rgb "dark-blue" lw 2
