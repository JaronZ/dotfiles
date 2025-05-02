[[ -n "$BASH_VERSION" ]] && [[ -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"
[[ -n "$ZSH_VERSION" ]] && [[ -f "$HOME/.zshrc" ]] && . "$HOME/.zshrc"
export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/go/bin:$HOME/go/bin:/usr/local/cuda/bin:$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"