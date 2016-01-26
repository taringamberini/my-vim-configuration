" ================================== VUNDLE ===================================
" https://github.com/VundleVim/Vundle.vim
" Vundle is short for _Vim bundle_ and is a Vim plugin manager.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" required by Vundle
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

" Vim essential plugin
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
" required by Vundle
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ============================= GENERAL SETTINGS ==============================

" allow backspacing over everything in insert mode
set backspace=indent,eol,start 
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" do incremental searching
set incsearch 
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" ================================== EDITING ================================== 

" Set default encoding as UTF-8
" http://vim.wikia.com/wiki/Working_with_Unicode
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

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

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

