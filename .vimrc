set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/Vundle.vim' 
Plugin 'Valloric/YouCompleteMe' 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips' 
Plugin 'a.vim' 
Plugin 'Yggdroot/indentLine' 
Plugin 'Raimondi/delimitMate' 
Plugin 'scrooloose/syntastic' 
Plugin 'neilagabriel/vim-geeknote' 
call vundle#end() 
filetype plugin indent on 
"""""""""""""""""""""""""""""""""""""""""" 
"""""""""""" My vimrc setting """"""""""""
"""""""""""""""""""""""""""""""" 
set fileencodings=utf8,big5,gbk,latin1 
set fileencoding=big5 

map <C-u> :set fileencoding=utf8 
map <C-b> :set fileencoding=big5 

noremap <Up> <NOP> 
noremap <Down> <NOP> 
noremap <Left> <NOP> 
noremap <Right> <NOP> 
inoremap <Up> <NOP> 
inoremap <Down> <NOP> 
inoremap <Left> <NOP> 
inoremap <Right> <NOP> 
vnoremap <Up> <NOP> 
vnoremap <Down> <NOP> 
vnoremap <Left> <NOP> 
vnoremap <Right> <NOP> 

syntax on
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set expandtab 
set t_Co=256 
"顯示行號
set number 
"顯示水平垂直軸 
set cursorline 
"set cursorcolumn 
""搜尋高亮 
set hlsearch 
"禁止折行 
set nowrap 
let mapleader="\\" 
"顯示輸入指令 
set showcmd

"""""""""""""""""""""""""""""""""""""""""" 
""""""""""" YouCompleteME 
"""""""""""""""""""""""""""""""""""""""""""" 
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:clang_library_path = '/home/wally/.vim/bundle/YouCompleteMe/third_party/ycmd' 
let g:ycm_confirm_extra_conf = 0 
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR> 
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR> 
let g:ycm_key_list_select_completion = ['<C-n>','<Down>','<tab>'] 
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>'] 
let g:SuperTabDefaultCompletionType = '<C-n>' 
let g:ycm_autoclose_preview_window_after_insertion= 1 
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_seed_identifiers_with_syntax = 1 
set completeopt-=preview 
let g:syntastic_always_populate_loc_list = 1
let g:ycm_enable_diagnostic_highlighting = 0 

"""""""""""""""""""""""""""""""""""""""""" 
""""""""""" vim-airline 
"""""""""""""""""""""""""""""""""""""""""" 
"airline设置 
set laststatus=2 
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1 " 开启tabline 
let g:airline#extensions#tabline#enabled = 1 "tabline中当前buffer两端的分隔字符 
let g:airline#extensions#tabline#left_sep = ' ' " tabline中未激活buffer两端的分隔字符 
let g:airline#extensions#tabline#left_alt_sep = '|' "tabline中buffer显示编号 
let g:airline#extensions#tabline#buffer_nr_show = 1 " 映射切换buffer的键位 
nnoremap [b :bp<CR> 
nnoremap ]b :bn<CR> 
let g:airline#extensions#syntastic#enabled = 1 

"""""""""""""""""""""""""""""""""""""""""" 
""""""""""" UltiSnips 
"""""""""""""""""""""""""""""""""""""""""""" 
let g:UltiSnipsExpandTrigger = "<C-q>" 
let g:UltiSnipsJumpForwardTrigger = "<tab>" 
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>" 
