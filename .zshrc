# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="clean"

# Other misc settings.
CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git)
source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Export path.
export PATH=${PATH}:/bin
export PATH=${PATH}:/usr/bin
export PATH=${PATH}:/usr/local/bin
export PATH=${PATH}:/sbin
export PATH=${PATH}:/usr/sbin
export PATH=${PATH}:/usr/local/sbin
export PATH=${PATH}:/usr/local/git/bin
export PATH=${PATH}:~/.composer/vendor/bin
export PATH=${PATH}:/home/vagrant/bin
export PATH=${PATH}:vendor/bin

# Aliases.
alias zshrc="sudo nano ~/.zshrc"
alias gitconfig="sudo nano ~/.gitconfig"
alias gituser="bash ~/.homestead-after/gituser.sh"
alias c="clear"
alias comp="composer"
alias art="php artisan"

function serve() {
        if [[ "$1" && "$2" ]]
        then
                sudo dos2unix /vagrant/scripts/serve.sh
                sudo bash /vagrant/scripts/serve.sh "$1" "$2" 80
        else
                echo "Error: missing required parameters."
                echo "Usage: "
                echo "  serve domain path"
        fi
}

