#!/bin/bash

echo "Downloading snippets"
git clone https://github.com/jrmatos/js-html-snippets.git
cd js-html-snippets

echo "Installing..."

if [[ `whoami` == "root" ]]; then  # Not 'whoami' -eq
    exit
fi

mv *sublime-snippet ~/.config/sublime-text-3/Packages/User

echo "Finishing..."
cd ..
rm -rf js-html-snippets

echo "Enjoy your new snippets"