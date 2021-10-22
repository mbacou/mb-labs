#!/bin/bash

# description: - stage all rendered Rmd documents and Shiny apps to Shiny Server root

SHINY_ROOT="/home/shiny"
cd "$(dirname "$(realpath "$0")")";

# Render
Rscript -e "rmarkdown::render_site(encoding = 'UTF-8')";

# Publish
git commit -am "auto-build" && git push;
