#!/bin/sh
sudo wget http://cs.sensiolabs.org/get/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer
sudo chmod a+x /usr/local/bin/php-cs-fixer
sudo php-cs-fixer self-update
sudo wget https://raw.github.com/thbourlove/Eleme-PHP-CS-Fixer/master/.vimrc_phpcsfixer -O ~/.vimrc_phpcsfixer
echo 'if filereadable(expand("~/.vimrc_phpcsfixer"))' >> ~/.vimrc
echo '    source ~/.vimrc_phpcsfixer' >> ~/.vimrc
echo 'endif' >> ~/.vimrc
vim +BundleInstall stephpy/vim-php-cs-fixer!
