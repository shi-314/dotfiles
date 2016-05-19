set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

Bundle 'git://github.com/jsx/jsx.vim.git'
Bundle 'scrooloose/nerdtree'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'
Bundle 'tomtom/tcomment_vim'
Bundle 'camelcasemotion'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'mbbill/undotree'
Bundle 'ctrlpvim/ctrlp.vim'

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

hi Cursor ctermbg=black
hi Normal ctermbg=darkgray

"
" Change cursor shape in different modes
"

    " Enable CursorLine
    set cursorline

    " Default Colors for CursorLine
    highlight  CursorLine ctermbg=235 ctermfg=None

    " Change Color when entering Insert Mode
    autocmd InsertEnter * highlight  CursorLine ctermbg=black ctermfg=None

    " Revert Color to default when leaving Insert Mode
    autocmd InsertLeave * highlight  CursorLine ctermbg=235 ctermfg=None

"
" Indentation
"

set smartindent
set tabstop=8
set shiftwidth=4
set expandtab

" Backspace behavior
set backspace=indent,eol,start

"
" General settings
"

let mapleader = "\<Space>"
colorscheme hybrid
set background=dark
set sessionoptions+=winpos,resize

set colorcolumn=100
set timeoutlen=1000 ttimeoutlen=0 " Decrease delay when switching between modes

set noswapfile

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Split char appearance
set fillchars=vert:│

set conceallevel=2
let b:javascript_enable_domhtmlcss=1
let g:javascript_conceal=1

" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview
"

" Bundle 'marijnh/tern_for_vim'
" Bundle 'maksimr/vim-jsbeautify'

map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

set completeopt-=preview

set number

function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction


nnoremap <C-n> :call NumberToggle()<cr>

"
" NERDTree settings
"

let NERDTreeShowBookmarks=1
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
let NERDTreeShowLineNumbers=0

" Open NERDTree in new tabs and windows if no command line args set
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd BufEnter * if !argc() | NERDTreeMirror | endif

" Highlight problematic whitespace
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Airline
    set laststatus=2
    let g:airline_theme='powerlineish'
    let g:airline_powerline_fonts=1


" UndoTree
  nnoremap <Leader>u :UndotreeToggle<CR>
  let g:undotree_SetFocusWhenToggle=1

highlight LineNr guifg=#666666

set cursorline

set hlsearch                    " Highlight search terms

" Unset last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

nmap <S-h> <C-w>W
nmap <S-l> <C-w>w

syntax on

" Brackets highlighting
hi MatchParen cterm=bold ctermbg=none ctermfg=red

set clipboard=unnamedplus

" C++
    nnoremap <F4> :make!<cr>
    set exrc
    set secure

    nnoremap <leader>jd :YcmCompleter GoTo<CR>
    nnoremap <leader>j :lnext<CR>
    nnoremap <leader>k :lprevious<CR>
    nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>



" Ctrlp
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

noremap <leader>w :call DeleteTrailingWS()<CR>
