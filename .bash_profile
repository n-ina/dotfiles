# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export SVN_EDITOR=vim
export PATH="/usr/local/sbin:$PATH"

# ctags
tagsCmd='ctags --languages=php -f'
tagsVariable=''
tagsVariable=$tagsVariable"cd $HOME/sample;$tagsCmd $HOME/.vim/tags/sample.tags $HOME/sample;"
tagsVariable=$tagsVariable"cd $HOME/test;  $tagsCmd $HOME/.vim/tags/test.tags   $HOME/test;"
alias TAGS=$tagsVariable

# The next line updates PATH for the Google Cloud SDK.
source '/Users/nao-inagaki/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/nao-inagaki/google-cloud-sdk/completion.bash.inc'
