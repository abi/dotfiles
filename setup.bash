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

# Install the `a` command (a CLI for anything that I want to do in path-agnostic manner)
echo "python `pwd`/a.py \$*" > /usr/bin/a
chmod a+x /usr/bin/a
# Install the necessary software to run the dev tools
pip install pyyaml==3.09
pip install termcolor==1.1.0

#apt-get install vim-ruby

#Vim Vundle setup
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#:BundleInstall
