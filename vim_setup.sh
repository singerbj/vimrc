sudo apt-get update
sudo apt-get install -y vim

mkdir -p ~/.vim/backup/

cp .vimrc ~/.vimrc

#pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
  curl -LSso ~/.vim/autoload/pathogen.vim \
  https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

#nerdtree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

#powerline
cd ~/.vim/bundle
git clone https://github.com/Lokaltog/vim-powerline.git

#solarized colors
wget https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
mkdir -p ~/.vim/colors/
mv solarized.vim ~/.vim/colors/

