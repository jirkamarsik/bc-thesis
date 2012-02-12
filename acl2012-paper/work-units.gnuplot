set terminal epslatex
set output 'img/work-units.eps'
set xrange [1:10]
set xlabel "Maximum number of simultaneous work units"
set yrange [0:30]
set ylabel "Seconds spent tokenizing the Brown corpus"
set style data lines
plot 'img/plot-data/groomed-workunits' title "Groomed Tokenizer", \
     'img/plot-data/satzlike-workunits' title "Satz-like Tokenizer",\
     'img/plot-data/simple-workunits' title "Simple Tokenizer",\
     'img/plot-data/baseline-workunits' title "Baseline Tokenizer"
