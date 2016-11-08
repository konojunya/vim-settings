if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

call plug#begin('~/.vim/plugged')

" Vundle/NeoBundle と同じように
Plug 'junegunn/seoul256.vim'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'

" コマンド実行時に読み込む
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle'] }

" 指定したファイルタイプを開いたときに読み込む
Plug 'tpope/vim-fireplace', { 'for': ['clojure'] }

" X | Y の時, X をインストールした後に Y をインストール
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#end()

"文字コードをUFT-8に設定
set fenc=utf-8
"バックアップファイルを作らない
set nobackup
"スワップファイルを作らない
set noswapfile
"編集中のファイルが変更されたら自動で読み直す
set autoread
"バッファが編集中でもその他のファイルを開けるように
set hidden
"入力中のコマンドをステータスに表示する
set showcmd

syntax on
colorscheme molokai

set backspace=indent,eol,start

set number
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

set list listchars=tab:\-\-
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

nnoremap j gj
nnoremap k gk
noremap <S-z>   ^
noremap <S-x>   $
nnoremap <silent><C-e> :NERDTreeToggle<CR>
