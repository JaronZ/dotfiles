# Aliases
alias ysb='yarn set version berry && yarn config set enableGlobalCache true && yarn config set nodeLinker node-modules && echo "" >> .gitignore && echo "# Yarn files" >> .gitignore && echo ".yarn/install-state.gz" >> .gitignore && echo ".yarn/build-state.yml" >> .gitignore'
