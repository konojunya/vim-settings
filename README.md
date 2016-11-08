# vim settings

## Installation

[vim-plug](https://github.com/junegunn/vim-plug)

```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

`~/.vimrc`

```
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

" コマンド実行時に読み込む (ツリー構成を表示するプラグイン)
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle'] }

" 指定したファイルタイプを開いたときに読み込む
Plug 'tpope/vim-fireplace', { 'for': ['clojure'] }

" X | Y の時, X をインストールした後に Y をインストール
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#end()
```

vimを開いて、コマンドモードで

`:PlugInstall`

で、vim-plugをインストールできる。

## 使い方

`ctrl + e` でツリーを開くことができる。

あとは[こちら](https://google.com)
