lua require("impatient")
lua require("init")

set number relativenumber
set number

vnoremap  <leader>y  "+y

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Fast saving
nmap <leader>w :w!<cr>

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :bd<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Quickly open a buffer for scribble
map <leader>q :e ~/Documents/scratch/buffer.md<cr>

try
    set undodir=~/.config/nvim/undodir
    set undofile
catch
endtry

" Trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" DIY autoclosing
" inoremap (; ();<left><left>
" inoremap [; [];<left><left>
" inoremap {; {};<left><left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap {<cr> {<cr>}<esc>O
" inoremap (<cr> (<cr>)<esc>O
" inoremap [<cr> [<cr>]<esc>O
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ` ``<left>
" inoremap ``` ```<cr>```<esc>O

filetype plugin indent on
set shiftwidth=4
set tabstop=4
set expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-codefmt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" noremap <leader>; :FormatCode clang-format<cr>
" noremap <leader>' :FormatLines clang-format<cr>
" augroup autoformat_settings
"   autocmd FileType bzl AutoFormatBuffer buildifier
"   autocmd FileType cpp AutoFormatBuffer clang-format
"   autocmd FileType dart AutoFormatBuffer dartfmt
"   autocmd FileType go AutoFormatBuffer gofmt
"   autocmd FileType gn AutoFormatBuffer gn
"   autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
"   autocmd FileType java AutoFormatBuffer google-java-format
"   autocmd FileType python AutoFormatBuffer yapf
"   " Alternative: autocmd FileType python AutoFormatBuffer autopep8
"   autocmd FileType rust AutoFormatBuffer rustfmt
"   autocmd FileType vue AutoFormatBuffer prettier
" augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=/usr/local/opt/fzf

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pandoc Preview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pandoc_preview_pdf_cmd = "zathura"
nnoremap <leader>- :PandocCompile<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neotex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:neotex_latexdiff = 1
" let g:neotex_pdflatex_alternative = 'xelatex'
" let g:tex_flavor = 'latex'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1
let g:tex_conceal = ""
let g:vim_markdown_math = 1
