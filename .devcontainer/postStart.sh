#!/bin/bash

# renv
R -q -e 'renv::restore()'
R -q -e 'renv::install()'
R -q -e 'renv::install("languageserver")'

uv sync --frozen