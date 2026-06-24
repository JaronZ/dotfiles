[[ -n "$BASH_VERSION" ]] && [[ -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"
[[ -n "$ZSH_VERSION" ]] && [[ -f "$HOME/.zshrc" ]] && . "$HOME/.zshrc"
export JAVA_HOME="$HOME/.jdks/openjdk-26.0.1"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin:$HOME/.local/share/JetBrains/Toolbox/scripts:$JAVA_HOME/bin:$PATH"
