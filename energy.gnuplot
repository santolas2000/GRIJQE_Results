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

plot [0.:0.1] [0.:]	15.9773 - 29.6759 * (2 / GeV_fm * x)**2 + 42.6822 * (2 / GeV_fm * x)**4 - 49.2686 * (2 / GeV_fm * x)**6 title "Margaret's tau^6" lc rgb "dark-chartreuse" , \
			"Log Scheme/Qs = 2/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Log, Q = 2GeV, m=0.2 GeV" lc rgb "dark-magenta", \
			"Log Scheme/Qs = 3.8079/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Log, Q = 3.81GeV, m=0.2 GeV" lc rgb "dark-blue", \
			"Log Scheme/Qs = 3.8079, m = 0.38079/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Log, Q = 3.81GeV, m=0.381 GeV" lc rgb "dark-orange" , \
			"Log Scheme/Qs = 3.675/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Log, Q = 3.675GeV, m=0.2 GeV" lc rgb "dark-red" , \
			"Log Scheme/Qs = 3.635, m = 0.3635/dEdx/1.0/MV_Energy.txt" using 1:2 with lines title "Log, Q = 3.635GeV, m=0.3635 GeV" lc rgb "dark-red" dt 2, \
		"Margaret's scheme/energy_plateau/MV_Energy.txt" using 1:2 with lines title "Margaret Scheme Q = 2Gev, m = 0.2GeV" lc rgb "black"
