" ======== Vundle settings ========
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Airline # airline.txt
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" CtrlP # ctrlp.txt
Plugin 'ctrlpvim/ctrlp.vim'

" EasyMotion # easymotion.txt
Plugin 'easymotion/vim-easymotion'

" Incsearch # incsearch.txt
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'

" Multiple Cursors # multiple_cursors.txt
Plugin 'terryma/vim-multiple-cursors'

" Surrounding # surround.txt
Plugin 'tpope/vim-surround'

" Split and Join # splitjoin.txt
Plugin 'AndrewRadev/splitjoin.vim'

" Repeating
Plugin 'tpope/vim-repeat'

" Auto Pairs
Plugin 'jiangmiao/auto-pairs'

" Commentary # commentary.txt
Plugin 'tpope/vim-commentary'

" Signature # signature.txt
Plugin 'kshenoy/vim-signature'

" Better Whitespace # better-whitespace.txt
Plugin 'ntpeters/vim-better-whitespace'

" GitGutter
Plugin 'airblade/vim-gitgutter'

" Abolish.vim # i cannot drive on this yet
" Plugin 'tpope/vim-abolish'

" Tabular
Plugin 'godlygeek/tabular'

" Emmet
Plugin 'mattn/emmet-vim'

" ======== Syntaxs ========
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'wavded/vim-stylus'
Plugin 'isRuslan/vim-es6'
Plugin 'posva/vim-vue'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'leafgarland/typescript-vim'

" ======== Snippets ========
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on

" ======== Airline ========
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" ======== NERDTree ========
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeAutoCenter = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\~$', 'yarn\.lock', '\.swp', '\.git$', 'node_modules', '.nuxt', 'dist']
let g:NERDTreeShowBookmarks = 1
map <C-\>  :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" ======== CtrlP ========
" Using nearest .git directory or current directory if the file is not in a
" subdirectory of the cwd
let g:ctrlp_working_path_mode = 'a'
" Ignoring (dir|file|link)s
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(\.git|node_modules|\.nuxt|dist)$',
  \ 'file': '\v\.(png|jpg)$'
  \ }

" ======== EasyMotion settings ========
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_use_upper = 1
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
let mapleader = ';'
" map <Leader> <Plug>(easymotion-prefix)

" basic cursor movements
map  <Leader>h  <Plug>(easymotion-linebackward)
map  <Leader>j  <Plug>(easymotion-j)
map  <Leader>k  <Plug>(easymotion-k)
map  <Leader>l  <Plug>(easymotion-lineforward)

" basic words forward/backward
map  <Leader>w  <Plug>(easymotion-w)
map  <Leader>W  <Plug>(easymotion-W)
map  <Leader>b  <Plug>(easymotion-b)
map  <Leader>B  <Plug>(easymotion-B)
map  <Leader>e  <Plug>(easymotion-e)
map  <Leader>E  <Plug>(easymotion-E)
map  <Leader>ge <Plug>(easymotion-ge)
map  <Leader>gE <Plug>(easymotion-gE)

" easymotion in search results
map  <Leader>n  <Plug>(easymotion-n)
map  <Leader>N  <Plug>(easymotion-N)

" replace default word searching
map  s  <Plug>(easymotion-sn)
omap  f  <Plug>(easymotion-fl)
omap  F  <Plug>(easymotion-Fl)
omap  t  <Plug>(easymotion-tl)
omap  T  <Plug>(easymotion-Tl)

" Repeat the last motion
map <CR> <Plug>(easymotion-repeat)

" ======== Multiple Cursors ========
" just using default key mappings
" let g:multi_cursor_use_default_mapping = 0
" let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-b>'
" let g:multi_cursor_skip_key = '<C-x>'
" let g:multi_cursor_quit_key = '<Esc>'

" ======== Incsearch ========
map /   <Plug>(incsearch-easymotion-/)
map ?   <Plug>(incsearch-easymotion-?)
map g/  <Plug>(incsearch-easymotion-stay)
map z/  <Plug>(incsearch-fuzzy-/)
map z?  <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" ======== Auro Pairs ========
let g:AutoPairsFlyMode = 1
" re-mapping keys for iTerm2 under MacOS in insert mode
let g:AutoPairsShortcutBackInsert = '∫' " <M-b>
let g:AutoPairsShortcutJump = '∂' " <M-d>

" No needs to remap
" let g:AutoPairsShortcutToggle = '<M-p>'

" Use ysiW) instead
" let g:AutoPairsShortcutWrap = '<M-e>'

" ======== Commentary ========
" custom file type example
" autocmd FileType apache setlocal commentstring=#\ %s

" ======== Signature ========

" ======== Better Whitespace ========
autocmd BufEnter * EnableStripWhitespaceOnSave

" ======== Git Gutter ========
let g:gitgutter_map_keys = 0
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk

" ======== Emmet ========
let g:user_emmet_install_global = 0
autocmd FileType html,css,xml,php,js,ts EmmetInstall

" ======== Snippets ========
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'


" ======== Syntax and theme ========
syntax enable
set background=dark
colorscheme solarized
hi! Visual  guifg=White guibg=LightBlue gui=none

" ======== Custom Stuffs ========
" Replace default <Esc> for more effective typing
noremap  <C-l> <Esc>
noremap! <C-l> <Esc>

" Custom key mapping leader
let mapleader = ';'

" Use spaces instead tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Resolve ` (I'm using a 60% keyboard ₍₍ (ง ˘ω˘ )ว ⁾⁾
map  ;' `
map! ;' `

" ======== Buffers ========
" Allow buffers to be hidden if modified
set hidden
" Use <M-t> (Option-t) to open an empty buffer
nmap <M-t> :enew<CR>
nmap †     :enew<CR>
" Use <M-l> (Option-l) to move to next buffer
nmap <M-]> :bnext<CR>
nmap ‘     :bnext<CR>
" Use <M-h> (Option-h) to move to prev buffer
nmap <M-[> :bprev<CR>
nmap “     :bprev<CR>
" Better way to write & quit
let mapleader = ','
nmap <leader>w   :w<CR>
nmap <leader>q   :bp <bar> bw #<CR>
nmap <leader>W   :w <bar> bp <bar> bw #<CR>

" ======== Windows ========
" Use <M-[hjkl]> (Option-[hjkl]) to jump to another window in the same direction
" nmap <M-h> <C-w>h
" nmap <M-j> <C-w>j
" nmap <M-k> <C-w>k
" nmap <M-l> <C-w>l
nmap ˙     <C-w>h
nmap ∆     <C-w>j
nmap ˚     <C-w>k
nmap ¬     <C-w>l

" Resize window
" nmap <M-=> <C-w>+
" nmap <M--> <C-w>-
" nmap <M-,> <C-w><
" nmap <M-.> <C-w>>
nmap ≠     2<C-w>+
nmap –     2<C-w>-
nmap ≤     3<C-w><
nmap ≥     3<C-w>>

" Reselect a visual block
nnoremap vv gv

" Middle the screen when ''
nnoremap '' ''zz

" Insert new line
nmap zj  o<Esc>k
nmap zk  O<Esc>j<C-e>

" Quick command in insert mode
inoremap II <C-o>I
inoremap AA <C-o>A
inoremap OO <C-o>O
inoremap CC <C-o>S
inoremap DD <C-o>dd

" vertical ruler
set colorcolumn=60,100

" Disable word wrap
set nowrap

" Horizontal scrolling
nnoremap zl 8zl
nnoremap zh 8zh

set hlsearch
set relativenumber
set showcmd
set cursorline
set backspace=2
set encoding=utf-8
set scrolloff=2
set foldmethod=syntax
set foldlevelstart=20

set directory=$HOME/.vim/swapfiles//
