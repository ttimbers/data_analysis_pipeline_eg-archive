## Building a Data Analysis pipeline tutorial
adapted from [Software Carpentry](http://software-carpentry.org/)

This example data analysis project analyzes the word count for all words in 4
novels. It reports the top 10 most occurring words in each book in a [report](doc/count_report.Rmd).

### Usage:

1. Clone this repo, and using the command line, navigate to the root of this project.

2. To run the analysis, type the following commands:

```
make all
```

3. To reset/undo the analysis, type the following commands:

```
make clean
```

### Depenedencies
- R & R libraries:
    - `rmarkdown`
    - `knitr`
    - `here`
- Python & Python libraries:
    - `matplotlib`
    - `numpy`
    - `sys`
    - `collections`
    - `wordcount`
- Bash Unix shell
- Make

The tutorials for this example can be found here:
- https://github.ubc.ca/MDS-2018-19/DSCI_522_dsci-workflows_students
