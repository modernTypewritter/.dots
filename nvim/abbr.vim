" This file contains all of the abbreviations I use. 
" Some of them can get quite long so they're stored 
" in this separate file

" LaTeX grid 
iabbrev drawgrid 
\<CR>\begin{center}
\<CR>\begin{tikzpicture}
\<CR>\begin{axis} [
\<CR>title={Graph of $x$},
\<CR>axis lines = center,
\<CR>xlabel = $x$,
\<CR>ylabel = $y$,
\<CR>xmajorgrids=true,
\<CR>ymajorgrids=true,
\<CR>xmin=-10,
\<CR>xmax=10,
\<CR>ymin=-10,
\<CR>ymax=10
\<CR>]
\<CR>...Stuff goes here...
\<CR>\end{axis}
\<CR>\end{tikzpicture}
\<CR>\end{center} 

" Markdown code and output display
iabbrev dispcode
\<CR>| Code                                    | Output              |
\<CR>|:----------------------------------------|--------------------:|
\<CR>|```
\<CR>[Code Goes Here]
\<CR>```|
\<CR>```
\<CR>[Output Goes Here] 
\<CR>```|
