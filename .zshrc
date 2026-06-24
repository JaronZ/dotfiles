source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# Environment Variables
## Java
export JAVA_HOME="$HOME/.jdks/openjdk-26.0.1"
## Node/NPM/Yarn/NVM
export NVM_DIR="$HOME/.nvm"
## Path
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin:$JAVA_HOME/bin:$PATH"

# Aliases
## Yarn
alias ysb='yarn set version berry && yarn config set enableGlobalCache true && yarn config set nodeLinker node-modules && echo "" >> .gitignore && echo "# Yarn files" >> .gitignore && echo ".yarn/install-state.gz" >> .gitignore && echo ".yarn/build-state.yml" >> .gitignore'

## Git
alias frequentgit='history | cut -c 8- | grep git | sort | uniq -c  | sort -n -r | head -n 10'

# Node Version Manager (NVM)
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Zoxide
eval "$(zoxide init zsh --cmd cd)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
