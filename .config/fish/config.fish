if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish --cmd cd | source

# FVM
set --export PATH /home/jaronz/.fvm_flutter/bin $PATH
