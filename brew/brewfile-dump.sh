if [ -e Brewfile ]; then
  rm Brewfile
fi

brew bundle dump
