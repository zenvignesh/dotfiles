set nu rnu
set path+=**
set tabstop=4
set complete+=kspell
set completeopt=menuone,longest
set hlsearch
set ignorecase
set smartcase
set cursorline


:nmap <Leader>d :.!date<cr>



map <leader>cd :cd %:p:h<cr>:pwd<cr>

map <leader>ss :setlocal spell!<cr>

map <leader>e :Ex<cr>

" Git related
:map ,l :!git.sh<cr>

" Buffer related
map ;h :bprev<cr>
map ;l :bnext<cr>

