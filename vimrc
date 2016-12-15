" ================================== VUNDLE ===================================
" https://github.com/VundleVim/Vundle.vim
" Vundle is short for _Vim bundle_ and is a Vim plugin manager.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
"
" Also required by Vundle
set nocompatible

" required by Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" required by Vundle
call vundle#begin()
" Keep 'Plugin' commands between vundle#begin/end.
" ------------------- Begin plugin list managed by Vundle ---------------------

" let Vundle manage Vundle, required by Vundle
Plugin 'VundleVim/Vundle.vim'


" My plugins follows:

" Think of sensible.vim as one step above 'nocompatible' mode: a universal
" set of defaults that (hopefully) everyone can agree on.
" See https://github.com/tpope/vim-sensible
Plugin 'tpope/vim-sensible'

" Suggested by Pratical Vim - second edition - by Drew Neil
" See https://github.com/tpope/vim-commentary
Plugin 'tpope/vim-commentary'

" Suggested by https://code.tutsplus.com/series/vim-essential-plugins--net-19224
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'

" -------------------- End plugin list managed by Vundle ----------------------
" required by Vundle
call vundle#end()

" File-type based indentation
" 
" This type of indentation is the most flexible, as it allows users to
" customize indentation per file type. This command will use indentation
" scripts located in the indent folder of your vim installation.
" 
" If you plan on using file type based indentation, don't set 'smartindent'
" or 'cindent'. You may still set 'autoindent', since it doesn't interfere.
"
" Also required by Vundle
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" ================================== EDITING ================================== 

" Set default encoding as UTF-8
" See http://vim.wikia.com/wiki/Working_with_Unicode
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  "set fileencodings=ucs-bom,utf-8,latin1
endif

" Use line numbers
set number
set numberwidth=5

" Converting tabs to spaces
" See http://vim.wikia.com/wiki/Converting_tabs_to_spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Disable arrow keys
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>



" ============================== FONTS AND COLORS =============================

" fonts
set guifont=DejaVu\ Sans\ Mono\ 12

" colors
colorscheme evening

" highlight OverLength ctermbg=DarkRed ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
