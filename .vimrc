"Spell Check
set spelllang=en

"Swap directory
set directory=~/vim/swapfiles//

"Boiler plate
function! VerBoil()
  r ~/vim/verilog_boilerplate.v
endfunction

"Tab Settings
  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set smartindent

"Lines and Numbers and Some Colors
  syntax enable
  " Relative Line Numbers from https://jeffkreeftmeijer.com/vim-number/
  set number relativenumber
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  augroup END

  set ruler
  set textwidth=90
  colo desert
" set colorcolumn=81
  execute "set colorcolumn=" . join(range(81,335), ',')
  highlight ColorColumn ctermbg=0
  set cursorline
  highlight CursorLine ctermbg=0

"Menu options?
  set wildmenu
  set showmatch
  set incsearch
  set hlsearch
  set autoread
  au CursorHold * checktime
  set completeopt=longest,menuone


"Remapping
  imap jj <esc>
  set backspace=2
  inoremap <Char-0x07F> <BS>
  nnoremap <Char-0x07F> <BS>
  nnoremap <leader><space> :nohlsearch<CR>

" Auto-Save Folding
" Broken: missing view save directory.
"augroup AutoSaveFolds
" autocmd!
"  autocmd BufWinLeave * mkview
"  autocmd BufWinEnter * silent loadview
"augroup END

