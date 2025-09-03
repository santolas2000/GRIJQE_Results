set datafile separator ','

set title "Temperature (Q_1 = Q_2 = 2.6 GeV, g = 1, m = 0.2 GeV)" # -- Rudimentary version of Margaret's Formula"
set ylabel "T (GeV)"
set xlabel "tau (fm)"
set key left bottom

set mxtics 2
set mytics 2

set grid
show grid

GeV_fm = 0.1973269804

plot [0.:0.6][0.:] "dEdx/1.0/MV_Temperature.txt" using 1:2 with lines title "MV Nf=2" lc rgb "red", \
	'' using 1:3 with lines title "MV Nf=3" lc rgb "dark-red", \
	((15.9773 - 29.6759 * (2 / GeV_fm * x)**2 + 42.6822 * (2 / GeV_fm * x)**4 - 49.2686 * (2 / GeV_fm * x)**6) / pi / pi * 60 / (32 + 7 * 2 * 3))**0.25 title "Margaret's tau^6 Nf=2" lc rgb "chartreuse", \
	((15.9773 - 29.6759 * (2 / GeV_fm * x)**2 + 42.6822 * (2 / GeV_fm * x)**4 - 49.2686 * (2 / GeV_fm * x)**6) / pi / pi * 60 / (32 + 7 * 3 * 3))**0.25 title "Margaret's tau^6 Nf=3" lc rgb "dark-chartreuse"
