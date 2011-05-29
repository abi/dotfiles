for dotfile in .bashrc .gitconfig .vimrc .irbrc
do
  echo $dotfile
  ln -s `pwd`/$dotfile ~/$dotfile
done

#Vim backup dirs setup
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/tmp
