alias ll "ls -al"
alias l "ls -l"
alias vim nvim
alias diff "diff --color"
alias fvi fish_vi_key_bindings
alias fdm fish_default_key_bindings

# NVM default version
set --universal nvm_default_version lts
set --universal EDITOR code

set NVIM_NODE_PATH (which node)
set GOPATH "/home/zablon/go"
set PATH $PATH (which node)
set PATH $PATH $GOPATH/bin
set PATH $PATH ~/.emacs.d/bin

# $HOME/bin
set PATH $PATH ~/bin/

# Adding Rust
set PATH $PATH "/home/zablon/.cargo/bin"

# pnpm
set -gx PNPM_HOME "/home/zablon/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
