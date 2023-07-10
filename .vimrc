set nu rnu
set path+=**
set tabstop=4
set complete+=kspell
set completeopt=menuone,longest
set hlsearch
set ignorecase
set smartcase
" set cursorline
set wildmenu

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

" toggle highlight search
nnoremap <F3> :set hlsearch!<CR>

" To open the URL link when pressing the 'gx'
nmap gx :silent execute "!explorer.exe " . shellescape("<cWORD>")<CR>:redr!<CR>

" To open Terminal
nmap <leader>t :vert terminal<cr>

" Column indicator
:call matchadd('colorColumn','\%81v',100)
:highlight ColorColumn ctermbg=magenta

" project specific
nmap ,e :!main.sh<cr>

" markdown related
map <leader>u1 :normal! yypVr=<cr>

" Display line numbers in the netrw window
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" Make Hyperlink for stings in puml mindmap file 
nnoremap <F6> gg/_ http<CR>:.s/_ http/_ [[http/<CR>A]]<ESC>

" Make svg file from mindmap puml file
nnoremap <F7> :!puml_to_svg.sh %<CR>
