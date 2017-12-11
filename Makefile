# Driver script
# Tiffany Timbers, Nov 2017
# Completes analysis of book word count from top to bottom (from raw data to rendering report)
#
# usage: make all

# run all analysis
all: doc/count_report.md

# make dat
results/isles.dat: data/isles.txt src/wordcount.py
	python src/wordcount.py data/isles.txt results/isles.dat
results/abyss.dat: data/abyss.txt src/wordcount.py
	python src/wordcount.py data/abyss.txt results/abyss.dat
results/last.dat: data/last.txt src/wordcount.py
	python src/wordcount.py data/last.txt results/last.dat
results/sierra.dat: data/sierra.txt src/wordcount.py
	python src/wordcount.py data/sierra.txt results/sierra.dat

#create plot
results/figure/isles.png: results/isles.dat src/plotcount.py
	python src/plotcount.py results/isles.dat results/figure/isles.png
results/figure/abyss.png: results/abyss.dat src/plotcount.py
	python src/plotcount.py results/abyss.dat results/figure/abyss.png
results/figure/last.png: results/last.dat src/plotcount.py
	python src/plotcount.py results/last.dat results/figure/last.png
results/figure/sierra.png: results/sierra.dat src/plotcount.py
	python src/plotcount.py results/sierra.dat results/figure/sierra.png

# make count_report
doc/count_report.md: src/count_report.Rmd results/figure/isles.png results/figure/abyss.png results/figure/last.png results/figure/sierra.png
	Rscript -e "ezknitr::ezknit('src/count_report.Rmd', out_dir = 'doc')"

#Clean up intermediate files
clean:
	rm -f results/isles.dat
	rm -f results/abyss.dat
	rm -f results/last.dat
	rm -f results/sierra.dat
	rm -f results/figure/isles.png
	rm -f results/figure/abyss.png
	rm -f results/figure/last.png
	rm -f results/figure/sierra.png
	rm -f doc/count_report.md doc/count_report.html
