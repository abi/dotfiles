for dotfile in .bashrc .gitconfig
do
  echo $dotfile
  ln -s `pwd`/$dotfile ~/$dotfile
done

