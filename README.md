Just a bunch of dotfiles.

NOTE
====

This repo is being phased out in favor of Wanderlust.

Usage
-----

First, `sudo easy_install-2.7 pip` to install pip.

Then,

`sudo bash setup.bash`

If some dotfiles already exist, those specific symlinks will fail to be created. Resolve your existing dotfiles and then, run the script again.

Then in Vim (do `sudo vim` to start it),

`:BundleInstall` to install all your plugins.

And on a Mac, you have to create a `.bash_profile` file that has:

`source ~/.bashrc`


Acknowledgements
----------------

* https://github.com/jbenet/dotfiles
* http://stackoverflow.com/questions/164847/what-is-in-your-vimrc

TODO
----

* bash_profile? For macs
* A bashrc that's specific to various machines?
* Sunburst (fix the color scheme downloading on VIM)
* Ubuntu's default nice bashrc