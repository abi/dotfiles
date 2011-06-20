set nocompatible
set autoindent
set smartindent
set shiftwidth=4
set expandtab
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
imap hh <Esc>

" Command-T key mappings
let g:CommandTAcceptSelectionVSplitMap='<CR>'
let g:CommandTAcceptSelectionMap='<C-CR>'
let g:CommandTAcceptSelectionTabMap='<S-CR>'

" Obscure file extension support
au BufNewFile,BufRead *.flex set filetype=cpp
" TODO: Find better syntax highlighters for sass too.
au BufNewFile,BufRead *.vintage set filetype=html
au BufNewFile,BufRead *.sass set filetype=css
au BufNewFile,BufRead *.coffee set filetype=rb

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
" Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-surround'
Bundle 'mattn/gist-vim'
Bundle 'scrooloose/syntastic'
Bundle 'mattn/zencoding-vim'

" TODO: Markdown syntax highlighting

" TODO: Figure out how to install color schemes into .vim/colors rather than
" .vim/bundle
Bundle 'gigamo/sunburst.vim'
", {'rtp' : '.vim/colors'}
"set rtp+=~/.vim/bundle/sunburst.vim/.vim/colors

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!

" Color scheme
syntax enable
set background=dark
colorscheme sunburst
