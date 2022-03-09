"                                                                      
" m    mm     m mmmmm  mm   m mmmmm mmmmmmm        m    m mmmmm  m    m
" ##  ## "m m"    #    #"m  #   #      #           "m  m"   #    ##  ##
" # ## #  "#"     #    # #m #   #      #            #  #    #    # ## #
" # "" #   #      #    #  # #   #      #            "mm"    #    # "" #
" #    #   #    mm#mm  #   ## mm#mm    #      #      ##   mm#mm  #    #
"                                                                      
"                                                                      
" vim key
let mapleader=" "
" noremap 
" noremap esc capslocks
" noremap capslocks esc
" noremap J 5j
" noremap K 5k
" noremap H 5h
" noremap L 5l
"
" map 
map S :w<CR>
map s <nop>
map Q :q<CR>
" Open the vimrc file anytime
map <LEADER>vim :e ~/.config/nvim/init.vim<CR>
" Duplicate words
map <LEADER>fd /\(\<\w\+\>\)\_s*\1
" Spelling Check with <space>sc
map <LEADER>sc :set spell!<CR>
"noremap <C-x> ea<C-x>s
"inoremap <C-x> <Esc>ea<C-x>s
"
" Press space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" :read||:r !figlet
map <LEADER>fig :r !figlet 

" print pdf || html
map <LEADER>th :%TOhtml<CR>


" split 分屏
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

" split 切换分屏
map sz <C-w>t<C-w>H
map ss <C-w>t<C-w>K


" 光标 <C-w>w 跳转 <C-w>hjkl 左下上右
map <LEADER>w <C-w>w 
"map <LEADER>h <C-w>h
"map <LEADER>j <C-w>j
"map <LEADER>k <C-w>k
"map <LEADER>l <C-w>l

" 分屏大小 <C-w>[n]<或> (n是数字>扩大<缩小)|| res\vertical resize
map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical resize-5<CR>
map <LEADER><right> :vertical resize+5<CR>

" tabe 标签页
map ta :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

" :source $MYVIMRC || :source ~/.config/nvim/init.vim || so %
"map R :source ~/.config/nvim/init.vim<CR>
map R :source %<CR>

"
syntax on
" 
set number 
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

"search
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>
" <operation><motion>



call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" File navigation
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

Plug 'junegunn/goyo.vim' " distraction free writing mode
"" The default plugin directory will be as follows:
""   - Vim (Linux/macOS): '~/.vim/plugged'
""   - Vim (Windows): '~/vimfiles/plugged'
""   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
"" You can specify a custom plugin directory by passing it as the argument
""   - e.g. `call plug#begin('~/.vim/plugged')`
""   - Avoid using standard Vim directory names like 'plugin'
"
"" Make sure you use single quotes
"
"" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
"
"" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
"" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
"" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
"" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }
"
"" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
"" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
"" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
"
"" Initialize plugin system
call plug#end()

colorscheme snazzy
let g:SnazzyTransparent = 1
"let g:lightline = {
"\ 'colorscheme': 'snazzy',
"\ }
"
" ===
" === NERDTree
" ===
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"
"let g:NERDTreeDirArrowExpandable = '?'
"let g:NERDTreeDirArrowCollapsible = '?'

" ==
" == NERDTree-git
" ==
"let g:NERDTreeIndicatorMapCustom = {
"    \ "Modified"  : "✹",
"    \ "Staged"    : "✚",
"    \ "Untracked" : "✭",
"    \ "Renamed"   : "➜",
"    \ "Unmerged"  : "═",
"    \ "Deleted"   : "✖",
"    \ "Dirty"     : "✗",
"    \ "Clean"     : "✔︎",
"    \ "Unknown"   : "?"
"    \ }
"
"
" ===
" === MarkdownPreview
" ===
nmap <LEADER>md <Plug>MarkdownPreview
source ~/.config/nvim/markdown.vim
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']



" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>

" ===
" === Goyo
" ===
map <LEADER>gy :Goyo<CR>
