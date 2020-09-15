set encoding=utf-8
scriptencoding utf-8
set shiftround          " '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set infercase           " 補完時に大文字小文字を区別しない
set virtualedit=all     " カーソルを文字が存在しない部分でも動けるようにする
set hidden              " バッファを閉じる代わりに隠す（Undo履歴を残すため）
set switchbuf=useopen   " 新しく開く代わりにすでに開いてあるバッファを開く
set showmatch           " 対応する括弧などをハイライト表示する
set matchtime=3         " 対応括弧のハイライト表示を3秒にする
set matchpairs& matchpairs+=<:>
set number
inoremap jj <Esc>


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/itsukisugita/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/itsukisugita/.vim/bundle')
  call dein#begin('/Users/itsukisugita/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/itsukisugita/.vim/bundle/repos/github.com/Shougo/dein.vim')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('thinca/vim-quickrun')
  call dein#add('vim-airline/vim-airline')
  call dein#add('tpope/vim-surround')
  call dein#add('cohama/lexima.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimfiler.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


" vim-quickrun preferences
let g:quickrun_config = {}
let g:quickrun_config._ = {
  \ 'outputter/buffer/split': ':below 10sp'
\ }
nnoremap <F5> :QuickRun<CR>

" vimfiler preferences
nnoremap <Leader>e :VimFilerExplorer<CR>
