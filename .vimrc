set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

au GUIEnter * simalt ~x
au BufEnter * cd %:p:h

set guifont=Lucida_Console:h8

set backspace=indent,eol,start
set autoindent
set cindent
set cinkeys-=0#
set backup
set backupdir=c:\temp\vim
set dir=c:\temp
set history=1024
set ruler
set number
set showcmd
set incsearch
set hlsearch
set ignorecase
set showmatch
set showmode
set shiftwidth=4
set tabstop=4
set expandtab
set nostartofline
set ls=2
set noerrorbells
set visualbell
set hidden
map <C-TAB>   :bn<CR>
map <S-C-TAB> :bp<CR>
map <C-W>     :bd<CR>
map <S-C-W>   :bd!<CR>
map <C-N>     :enew<CR>
map <F6>      gg=G
syntax on
colorscheme desert

