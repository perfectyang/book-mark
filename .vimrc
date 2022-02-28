" 映射别名
"
let mapleader=";"

set nocompatible
set backspace=indent,eol,start
set path+=**
"set spell
set wildmenu
set pastetoggle=<f5>

filetype plugin indent on
noremap <cr> :nohlsearch<cr>
"map <leader>wh :set splitright<CR>:vsplit<CR>
map <leader>h :set nosplitright<CR>:vsplit<CR>
map <leader>v :set splitbelow<CR>:split<CR>
"map spvn :set nosplitbelow<CR>:split<CR>
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
syntax on
set number
"set numberwidth=5
set relativenumber
set cursorline
set mouse=a
set encoding=utf-8
set wrap
set showcmd
set wildmenu
set indentexpr=
set foldmethod=indent
au BufWinLeave * silent mkview
au BufRead * silent loadview
nnoremap <space> za
set foldlevel=99
set scrolloff=5
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 跳转
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Up> <Nop>
"inoremap <Up> <Nop>
nnoremap <Down> <Nop>
"inoremap <Down> <Nop>
nnoremap <Left> <Nop>
inoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Right> <Nop>
inoremap jj <Esc> 
            
nnoremap Y yy
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap <space> <space><c-g>u

nnoremap g; g;zz

"map R diwP


vnoremap <Down> :m '>+1<CR>gv=gv
vnoremap <Up> :m '<-2<CR>gv=gv


vnoremap < <gv
vnoremap > >gv

nmap J 5j
vmap J 5j
nmap K 5k
vmap K 5k
noremap L $
noremap H ^
set incsearch
set smartcase
set hlsearch
"map <down> :res -5<CR>
"map <left> :vertical resize-5<CR>
"map <right> :vertical resize+5<CR>
map <Leader>ot :tabe<CR>
map <Leader>n gt<CR>
map <Leader>1 1gt<CR>
map <Leader>2 2gt<CR>
map <Leader>3 3gt<CR>
map <Leader>4 4gt<CR>
map <Leader>5 5gt<CR>
map <Leader>6 6gt<CR>
map <Leader>7 7gt<CR>
map <Leader>8 8gt<CR>
map <Leader>9 9gt<CR>
map <Leader>b gT<CR>


call plug#begin('~/.vim/plugged')
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'ctrlp.vim/ctrlp.vim'
Plug 'tpope/vim-surround'
"Plug 'connorholyday/vim-snazzy'
" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
" Taglist
"Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
" Error checking
"Plug 'w0rp/ale'
" Auto Complete
" Plug 'Valloric/YouCompleteMe'
" Undo Tree
"Plug 'mbbill/undotree/'
" Other visual enhancement
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'
" Python
Plug 'vim-scripts/indentpython.vim'
" Markdown
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
"Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'vimwiki/vimwiki'
" Bookmarks
"Plug 'kshenoy/vim-signature'
" Other useful utilities
"Plug 'terryma/vim-multiple-cursors'
"Plug 'junegunn/goyo.vim' " distraction free writing mode
"Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
"Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
"Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
"Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line
"" Dependencies
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'kana/vim-textobj-user'
"Plug 'fadein/vim-FIGlet'


Plug 'posva/vim-vue'

"Plug 'SirVer/ultisnips'
":jjhPlug 'theniceboy/vim-snippets'

Plug 'neoclide/coc.nvim', {'branch': 'release'}



Plug 'whatyouhide/vim-gotham'

Plug 'jayli/vim-easydebugger'

call plug#end()


colorscheme gotham256



"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
if exists('*complete_info')
  inoremap <silent><expr> <cr> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"hhlet g:UltiSnipsExpandTrigger="tt"
"hh" let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/plugged/ultisnips', $HOME.'/.vim/plugged/vim-snippets/UltiSnips']
"hhlet g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/plugged/ultisnips', $HOME.'/.vim/mysnips']

" tabsize
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nowrap

" 剪切板
set clipboard=unnamed
set pastetoggle=<F9>

"colorscheme snazzy
"let g:SnazzyTransparent=1 
" Emmet
" let g:user_emmet_install_global = 0
" let g:user_emmet_expandabbr_key = '<F2>'
"let g:user_emmet_leader_key= '<Tab>'
"autocmd FileType html,css,vue EmmetInstal

" NERDTREE
map <Leader>f :NERDTreeMirror<CR>
map <Leader>f :NERDTreeToggle<CR>

"修改树的显示图标
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules']
let g:NERDTreeWinSize=30

"autocmd vimenter * NERDTree

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = ''
nnoremap <c-b> :CtrlPBuffer><CR>

set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'
" autocmd BufWritePost * call system("ctags -R")
"

" 映射启动
nmap <Leader>; :w<CR>
nmap <Leader>q :q!<CR>

"nmap <Leader>' "




" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee,*.ts,*.tsx :call CleanExtraSpaces()
endif
"imap <leader>( ()<ESC>i


" 去除修改操作时保存内容到无用_寄存器去
"nnoremap <Leader>dd "_dd
"nnoremap d "_d
"nnoremap D "_D
"nnoremap S "_S
"nnoremap x "_x
"nnoremap X "_X
"nnoremap c "_c
"nnoremap C "_C

"nnoremap m1 :normal! kmmjdd{p`m<cr>

"vmap <leader>j  <plug>moveblockdown
"vmap <leader>k <plug>moveblockup

"vmap X y/<C-R>"<CR>
"
"

nmap daf va{Vd
nmap yaf va{Vy
nmap S ^c$
nmap <Leader>p vawp

vnoremap ;) <esc>`>a)<esc>`<i(<esc>
vnoremap ;] <esc>`>a]<esc>`<i[<esc>
"vnoremap ;} <esc>`>a}<esc>`<i{<esc>
vnoremap ;} <esc>`>a}<esc>`<i{<esc>
vnoremap ts <esc>`>a)<esc>`<it(<esc>
"vnoremap $$ <esc>`>a"<esc>`<i"<esc>
"vnoremap $q <esc>`>a'<esc>`<i'<esc>
"vnoremap $e <esc>`>a`<esc>`<i`<esc>

"inoremap $1 ()<esc>i
"inoremap $2 []<esc>i
"inoremap $3 {}<esc>i
"inoremap $4 {<esc>o}<esc>O
"inoremap $q ''<esc>i
"inoremap $e ""<esc>i


