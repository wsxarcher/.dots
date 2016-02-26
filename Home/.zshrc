# exports
export TERM=xterm-256color
export EDITOR="vim"
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# alias
alias v="vi"
alias vi="vim"
alias fm="ranger"
alias sl="ls"
alias shred="shred -z"
alias wget="wget -U 'Fuck'"
alias curl="curl --user-agent 'Fuck'"

# bin
alias checksec="~/.dots/checksec.sh/checksec"
alias ida="wine 'C:\\Program Files (x86)\\IDA 6.9\\idaq.exe'"

# antigen
source ~/.dots/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle git

antigen theme agnoster

antigen apply
