R -e "rmarkdown::render('index.Rmd',output_file='index.html')"
R -e "rmarkdown::render('tokenising.Rmd',output_file='tokenising.html')"
R -e "rmarkdown::render('tokenising_answer.Rmd',output_file='tokenising_answer.html')"
R -e "rmarkdown::render('regexp.Rmd',output_file='regexp.html')"
R -e "rmarkdown::render('sentiment.Rmd',output_file='sentiment.html')"
R -e "rmarkdown::render('wordclouds.Rmd',output_file='wordclouds.html')"
R -e "rmarkdown::render('ngrams.Rmd',output_file='ngrams.html')"
R -e "rmarkdown::render('correlations.Rmd',output_file='correlations.html')"
R -e "rmarkdown::render('summary.Rmd',output_file='summary.html')"
