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
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
cp vim-colors-solarized ~/.vim/bundle/

echo "export PS1="'"\[\e[00;37m\]\n\[\e[0m\]\[\e[00;31m\]\$?\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;33m\]-\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;31m\]\u\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;33m\]-\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;31m\]\@\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;33m\]-\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;31m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;33m\]>>\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"'" " >> ~/.bashrc
