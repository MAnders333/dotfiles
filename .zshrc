# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
for file in ~/.{path,exports,aliases,functions,promptline.sh,tmuxline.sh}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#Setting prompt
#export PROMPT="%(?.%F{22}√.%F{9}?%?)%f %B%F{22}%n%f%b@%B%F{100}%m%f%b: %B%F{240}%~%f%b %# "

# set default text editor
export EDITOR="nvim"

# vim-like behavior in zsh
set -o vi

# Setting PATH for Python 3.8
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/opt/icu4c/bin:${PATH}"
export PATH


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
