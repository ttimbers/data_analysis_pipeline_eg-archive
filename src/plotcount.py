#!/usr/bin/env python
import argparse
import pandas as pd
import matplotlib.pyplot as plt

parser = argparse.ArgumentParser()
parser.add_argument('input_file')
parser.add_argument('output_file')
args = parser.parse_args()

def main():
    data = pd.read_csv(args.input_file, sep = ' ', header = None)
    data.rename(columns = {0:'word', 1:'count', 2:'frequency'}, inplace = True)
    data.sort_values(by = 'count')
    word_count_plot = data.iloc[:10,:2].plot.bar(x = 'word', y = 'count',
                                             color = 'blue',
                                             figsize = (5, 2),
                                            rot = 0)
    plt.savefig(args.output_file)

if __name__ == "__main__":
    main()
