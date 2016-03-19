# search neovim
which nvim > /dev/null 2>&1

if [ $? -eq 0 ]
then
    VIM_BIN="nvim"
else
    VIM_BIN="vim"
fi

# exports
export TERM=xterm-256color
export EDITOR=$VIM_BIN
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# alias
alias v=$VIM_BIN
alias vi=$VIM_BIN
alias vim=$VIM_BIN

unset $VIM_BIN

alias fm="ranger"
alias sl="ls"
alias shred="shred -z"
alias wget="wget -U 'Fuck'"
alias curl="curl --user-agent 'Fuck'"

# bin
alias checksec="~/.dots/checksec.sh/checksec"
alias ida="wine 'C:\\Program Files (x86)\\IDA 6.9\\idaq.exe'"

# autocomplete
fpath=(~/.dots/checksec.sh/extras/zsh/ $fpath)

# antigen
source ~/.dots/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle git

antigen theme agnoster

antigen apply
