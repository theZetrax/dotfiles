alias code code-insiders
alias ll "ls -al"
alias vim nvim

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
