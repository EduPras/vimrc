" Plugin {{{
  call plug#begin('~/.vim/plugged')

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tabnine/YouCompleteMe'
  Plug 'jiangmiao/auto-pairs'
  Plug 'Yggdroot/indentLine'
  Plug 'tomasiser/vim-code-dark'

  call plug#end()

" }}}

set relativenumber
set tabstop=2 softtabstop=2 expandtab shiftwidth=2
set foldmethod=indent
nnoremap <space> za
set autoindent
set smartindent
set cursorline
set mouse=a
colo codedark
let g:indentLine_enabled = 1
map <c-k>i :IndentLinesToggle<cr>
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp\|bd #<cr>
set guifont=Droid\ Sans\ Fallback:h12

" YCM config {{{
  let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
  set completeopt-=preview
  let g:ycm_show_diagnostics_ui=0
  let g:ycm_language_server =
    \ [{
    \   'name': 'ccls',
    \   'cmdline': [ 'ccls' ],
    \   'filetypes': [ 'c', 'cpp', 'h', 'hpp', 'cc' ],
    \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
    \ }]
  let g:ycm_clangd_args=['--header-insertion=never']
" }}}
