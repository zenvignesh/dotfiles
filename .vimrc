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
map ;d :bd<cr>

" Search related
map ;n :cn<cr>
map ;p :cp<cr>
map ;o :copen<cr>

" To open the URL link when pressing the 'gx'
nmap gx :silent execute "!explorer.exe " . shellescape("<cWORD>")<CR>:redr!<CR>

" To open Terminal
nmap <leader>t :terminal<cr>

" Column indicator
:call matchadd('colorColumn','\%81v',100)
:highlight ColorColumn ctermbg=magenta

" project specific
nmap ,e :!main.sh<cr>


" test for the vim 
nmap ,t :call popup_atcursor("Test popup string", #{
		\ pos: 'botleft',
		\ line: 'cursor-1',
		\ col: 'cursor',
		\ moved: 'WORD',
		\ })<cr>

