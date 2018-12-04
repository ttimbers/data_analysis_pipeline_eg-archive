## Building a Data Analysis pipeline tutorial
adapted from [Software Carpentry](http://software-carpentry.org/)

This example data analysis project analyzes the word count for all words in 4
novels. It reports the top 10 most occurring words in each book in a [report](doc/count_report.Rmd).

### Usage:

There are two suggested ways to run this analysis:

#### 1. Using Docker

1. Install [Docker](https://www.docker.com/get-started)
2. Download/clone this repository
3. Use the command line to navigate to the root of this downloaded/cloned repo
4. Type the following:

```
docker run --rm -v $(pwd):/home/rstudio/data_analysis_eg ttimbers/data_analysis_pipeline_eg make -C /home/rstudio/data_analysis_eg all
```

#### 2. After installing all dependencies (does not depend on Docker)

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
    - `cowsay`
- Python & Python libraries:
    - `matplotlib`
    - `numpy`
    - `pandas`
    - `sys`
    - `collections`
    - `wordcount`
- Bash Unix shell
- Make

The tutorials for this example can be found here:
- https://github.ubc.ca/MDS-2018-19/DSCI_522_dsci-workflows_students
