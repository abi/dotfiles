for dotfile in bashrc gitconfig vimrc irbrc
do
  echo $dotfile
  ln -s `pwd`/$dotfile ~/.$dotfile
done

#Vim backup dirs setup
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/tmp

# Vim color schemes setup (this should really be automated)
mkdir -p ~/.vim/colors

#apt-get install vim-ruby

#Vim Vundle setup
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#:BundleInstall
