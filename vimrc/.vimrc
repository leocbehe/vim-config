" Leo's vimrc file

" General options --- {{{
let &compatible = 0
filetype plugin on
colorscheme nord
set number
set hidden
set ignorecase
set smartcase
set hlsearch incsearch
set tabstop=3
set expandtab
set viminfo^=%
set shiftwidth=3
set numberwidth=4
set foldlevelstart=0
set textwidth=80
" }}}

" Leader definitions --- {{{
let mapleader = "-"
let localmapleader = "\\"
" }}}

" Status line --- {{{
set laststatus=2
set statusline=%F:
set statusline+=\ Line
set statusline+=\ %05l
set statusline+=\ of
set statusline+=\ %05L
set statusline+=,\ column\ %c
" }}}

" Normal keymaps --- {{{
nnoremap j gj
nnoremap k gk
nnoremap / /\v
nnoremap <c-j> }
nnoremap <c-k> {
nnoremap <leader>er :nohlsearch<cr>
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>eb :edit ~/.bashrc<cr>
nnoremap <leader>w ddkP
nnoremap <leader>b ddp
nnoremap <c-p> :bp<cr>
nnoremap <c-n> :bn<cr>
nnoremap <leader>u za
" }}}

" Insert keymaps --- {{{
inoremap jk <esc>
inoremap <c-h> <esc>i
inoremap <c-l> <esc>la
inoremap <c-k> <esc>ka
inoremap <c-j> <esc>ja
" }}}

" Visual keymaps --- {{{
" Only works on single lines! Not sure why yet.
vnoremap " <esc>`<i"<esc>`>la"<esc>
" }}}

" Operator keymaps --- {{{
onoremap an( :<c-u>normal! f(va(<cr>
onoremap ap( :<c-u>normal! F)va(<cr>
onoremap an{ :<c-u>normal! f{va{<cr>
onoremap ap{ :<c-u>normal! F{va{<cr>
" }}}

" Vimscript filetype --- {{{
augroup vim_filetype
   autocmd!
   autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Python filetype --- {{{
" augroup python_filetype
   " autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>
   " autocmd FileType python nnoremap <buffer> <localleader>C VipV`<O'''<esc>`>o'''<esc>
" augroup END
" }}}

" function MakeProperty(propName)
"    let l:privateName = a:propName . "__"
"    echom l:privateName
"    return l:privateName
" endfunction

" Javascript filetype --- {{{
augroup javascript_filetype
   autocmd!
   autocmd FileType javascript inoremap <buffer> clog console.log();<esc>hi
augroup END
" }}}

" Markdown filetype  --- {{{
augroup markdown_filetype
   autocmd!
augroup END
" }}}
