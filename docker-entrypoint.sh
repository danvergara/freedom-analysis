#!/bin/sh

set -xe

exec voila --strip_sources=False freedom_analysis/exploratory_analysis.ipynb 
