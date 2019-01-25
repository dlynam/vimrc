colorscheme jellybeans

:set guifont=Menlo\ Regular:h14

"disable mouse"
:set mouse=c

"highlights as you search"
:set incsearch

"enable line numbers"
:set number

execute pathogen#infect()

set nocompatible
syntax on             " Enable syntax highlighting
filetype plugin indent on

"load nerdtree by default"
autocmd vimenter * NERDTree

"set default nerdtree directory to rails_apps"
cd ~/rails_apps

"change tabs to spaces"
:set tabstop=2
:set shiftwidth=2
:set expandtab

"indents next line to current indentation"
:set autoindent

"indent further after keyword on next line"
"need cinoptions here?"
set cinwords=if,else,while,do,for,switch,case

set mat=5  " Bracket blinking.

"displays long lines as just one line"
:set nowrap

set laststatus=2

"highlight cursor line"
set cul
set cursorline
"hi CursorLine term=none cterm=none ctermbg=3

"disable bell alert"
set visualbell "do not beep
set noerrorbells " I hate console beeps.

"make gitgutter column background match
highlight clear SignColumn

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"do not replace paste register with new content"
xnoremap p "_dP
