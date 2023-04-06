# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration

# shortcuts # 
alias untar="tar -zxvf"
alias cls="clear"
alias trash="sudo rm -rf ~/.local/share/Trash/*"
alias reboot="qdbus org.kde.Shutdown /Shutdown logoutAndReboot"
alias off="qdbus org.kde.Shutdown /Shutdown logoutAndShutdown"
alias sys="systemctl"
alias la="la -a"
alias all="ls -al"
alias jctl="journalctl"
alias vim="nvim"
alias zs="nvim ~/.zshrc"
alias c="xclip"
alias v="xclip -o"


# env vars #
export ZSH=~/.oh-my-zsh
export VISUAL=vim
export EDITOR="$VISUAL"
export PICO_SDK_PATH=/opt/pico-sdk
export PICO_EXAMPLES_PATH=/opt/pico-examples
export PATH=$PATH:/usr/local/go/bin


plugins=(
    git
    dotenv
    autopep8
    copypath
    python
)

source $ZSH/oh-my-zsh.sh

if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
  function mkcd {
  mkdir -p "$*"
  cd "$*"
}
fi


