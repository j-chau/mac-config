
source $ZSH_CUSTOM/catppuccin_macchiato-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

RUBY="/opt/homebrew/opt/ruby/bin:"
GO="$HOME/go/bin:"
export PATH="$RUBY:$GO:$PATH"

PATH=$PATH:$(ruby -e 'puts Gem.bindir')
export XDG_CONFIG_HOME="$HOME/.config"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/joeychau/.config/broot/launcher/bash/br
source <(fzf --zsh)
eval "$(zoxide init zsh)"
eval "$(thefuck --alias)"
