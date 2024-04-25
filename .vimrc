let mapleader = "\<Space>"

set nu rnu
set path+=**
set tabstop=4
set complete+=kspell
set completeopt=menuone,longest
set hlsearch
set ignorecase
set smartcase
set cursorline
set wildmenu

set history=1000 " Maximum number of entries in the search history
set viminfo+=n   " Save search history

:nmap <Leader>d :.!date<cr>



set expandtab    " Use spaces instead of tabs
set shiftwidth=4 " Indentation width for auto-indenting
set softtabstop=4 " Number of spaces to insert/delete in insert mode


map <leader>cd :cd %:p:h<cr>:pwd<cr>

map <leader>ss :setlocal spell!<cr>

nnoremap E :Ex<cr>
nnoremap W :bw<cr>

" Git related
:map ,l :!git.sh<cr>

" Buffer related
nnoremap J :bprev<cr>
nnoremap K :bnext<cr>
nnoremap X :bd<cr>

" Search related
" Search current file
nnoremap <leader>sf :vim //g %<Left><Left><Left><Left>
nnoremap <leader>sd :grep -rinw --include \*.c --include \*.h "" .<Left><Left><Left>
nnoremap <C-j> :cnext<cr>
nnoremap <C-k> :cprev<cr>
nnoremap <leader>o :copen<cr>
nnoremap <leader>x :cclose<cr>

" toggle highlight search
nnoremap <F3> :set hlsearch!<CR>

" To open the URL link when pressing the 'gx'
nmap gx :silent execute "!explorer.exe " . shellescape("<cWORD>")<CR>:redr!<CR>

" To open the current *.adoc file via system browser
nmap pv :!start %<CR>

" To open current netrw file browser into windows system explorer
nmap ex :!start .<CR>

" Convert the currect adoc file into pdf or html file output respectively
nmap pdf :!asciidoctor-pdf %<CR>
nmap html :!asciidoctor %<CR>

" Convert puml file into svg or pdf file output respectively
nmap svg :!puml_to_svg.sh %<CR>

" Include ascii doc block for table or nested table respectively
nmap at :.!cat ~/bin/template_table_adoc.adoc<CR>
nmap ant :.!cat ~/bin/template_nested-table_adoc.adoc<CR>


" To open Terminal
nmap <leader>t :terminal<cr>

" Column indicator
:call matchadd('colorColumn','\%121v',70)
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

" Lines to save text folding
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview


