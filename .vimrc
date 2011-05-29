set nocompatible
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set incsearch
set number
set mouse=ai
set wildignore=*.o,*.obj,*.bak,*.exe
set ignorecase
set smartcase

" Backups
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Turn off annoying error bells
set noerrorbells
set visualbell
set t_vb=

" Fix some common typos
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Spelling
if v:version >= 700
  " Enable spell check for text files
  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif

" Key mappings
map <TAB> gt
map <S-TAB> gT
" I don't like <Esc>; it's also tiny on the Air
imap jj <Esc>

" Obscure file extension support
au BufNewFile,BufRead *.flex set filetype=cpp

" Vundle stuff

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-surround'
Bundle 'mattn/gist-vim'
Bundle 'scrooloose/syntastic'
Bundle 'mattn/zencoding-vim'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!

" solarized
syntax enable
set background=light
colorscheme solarized
