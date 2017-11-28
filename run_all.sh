# run_all.sh
# Tiffany Timbers, Nov 2017
#
# This driver script completes the textual analysis of
# 3 novels and creates figures on the 10 most frequently
# occuring words from each of the 3 novels. This script
# takes no arguments.
#
# Usage: bash run_all.sh

# perform wordcout on novels
python src/wordcount.py data/isles.txt results/isles.dat
python src/wordcount.py data/abyss.txt results/abyss.dat
python src/wordcount.py data/last.txt results/last.dat
python src/wordcount.py data/sierra.txt results/sierra.dat

# create plots
python src/plotcount.py results/isles.dat results/figures/isles.pdf
python src/plotcount.py results/abyss.dat results/figures/abyss.pdf
python src/plotcount.py results/last.dat results/figures/last.pdf
python src/plotcount.py results/sierra.dat results/figures/sierra.pdf

# make report
Rscript -e 'ezknitr::ezknit("src/count_report.Rmd", out_dir = "doc")'
