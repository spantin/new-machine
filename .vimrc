"set timeout timeoutlen=100 ttimeoutlen=50

set smartcase
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
" code folding
set fen
set foldmethod=indent

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 't9md/vim-choosewin'
Plugin 'blueyed/vim-diminactive'
Plugin 'arcticicestudio/nord-vim'
Plugin 'matze/vim-move'
Plugin 'airblade/vim-gitgutter'
Plugin 'joonty/vdebug'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/emmet-vim'
call vundle#end()
filetype plugin indent on

Bundle 'joonty/vim-xdebug.git'

" configurations
"let g:indentLine_enabled = 1
set laststatus=2
set noshowmode
if !has('gui_running')
	set t_Co=256
endif

let g:user_emmet_mode='i'
autocmd FileType html,css EmmetInstall

set number relativenumber
set clipboard=unnamedplus
let g:rainbow_active = 1
let g:debuggerPort = 10321 
let g:airline_theme='simple'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:move_key_modifier = 'C'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:vdebug_options = {}
let g:vdebug_options["port"] = 10321
let g:vdebug_options["break_on_open"] = 0
colorscheme nord

" shortcut mapping
noremap <c-p> :FZF<CR>
noremap <c-n> :NERDTreeToggle<CR>


noremap <Up> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" custom commands
command Noff set nornu | set nonumber
command Non set rnu | set number

highlight ColorColumn ctermbg=240 guibg=#262626
