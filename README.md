<h1>Install ZSH and OH-MY-ZSH</h1>

<code> > brew install zsh</code>

<code> > sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh</code>

<code> > which zsh</code>
<code>/usr/local/bin/zsh</code>

<code> > dscl . -read /Users/$USER UserShell</code>

<code>UserShell: /usr/local/bin/zsh</code>

<code> > echo $SHELL</code>

<code>/usr/local/bin/zsh</code>

<code> > git clone git@github.com:mtraverso/utils.git</code>

<code> > mv .zshrc .zshrc.orig</code>

<code> > ln -s ~/utils/.zshrc ~/.zshrc</code>

<code> clone https://github.com/zsh-users/zsh-syntax-highlighting into .oh-my-zsh/zsh-syntax-highlighting
