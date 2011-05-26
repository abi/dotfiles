for dotfile in .bashrc .gitconfig .vimrc .irbrc
do
  echo $dotfile
  ln -s `pwd`/$dotfile ~/$dotfile
done

