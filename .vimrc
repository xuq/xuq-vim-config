"Author: xuq
"Date: June 24, 2015
"Email: xuq007@gmail.com
"
set relativenumber 
set cursorline cursorcolumn
set nu
set wrap
set lsp=5
set tw=79
set cc=80
set showcmd
set showmatch "highlight matching {[()]}
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
"let mapleader=","       " leader is comma
"set spell spelllang=en_us  " check spell all the time
setlocal spell spelllang=en_us   " only check spell in text mode
set spellfile=$HOME/.vim/en.utf-8.add
"
" CtrlP settings
 let g:ctrlp_match_window = 'bottom,order:ttb'
 let g:ctrlp_switch_buffer = 0
 let g:ctrlp_working_path_mode = "ra"
 let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
 let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

colorscheme solarized
"colorscheme jellybeans
"colorscheme delek 

"Set intent
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"
nmap <F1> :CtrlP <CR>
nmap <F2> <C-W>
nmap <F4> :BufExplorer  <CR>
nmap <F5> :TagbarToggle  <CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F6> :WMToggle<CR>
nmap <F7> :GundoToggle<CR>
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
nmap tt o<Esc>

set autochdir
set autoindent
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File = 1
filetype indent on
syntax on
let g:NERDTree_title='NERD Tree'
set ruler
set expandtab
set shiftwidth=4 softtabstop=4
set modifiable
set confirm
set clipboard=unnamed

"Set pathogen
filetype on
filetype plugin on
execute pathogen#infect()
call pathogen#helptags()

"Set Vundle
set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Yggdroot/indentLine'

filetype plugin indent on

"Set pyflakes
let g:pydiction_location='/Users/xuq/.vim/complete-dict'
let g:pyflakes_use_quickfix = 0

"set virtualenv
" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

"let g:SuperTabDefaultCompletionType = <c-x><c-o>
"let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-n>"
set nocompatible
set backspace=indent,eol,start

"set jedi
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#use_tabs_not_buffers = 0
" Load rope plugin
let g:jedi#show_call_signatures = 0
let g:jedi#popup_on_dot = 0
let g:pymode_rope = 0

"New functions
set cursorline                  " highlight current line
""" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='dark'
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

"set guifont=Inconsolata-g\ for\ Powerline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

let g:EasyMotion_leader_key = '<space>'
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_use_smartsign_us = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'

let g:user_emmet_leader_key='<C-H>'
