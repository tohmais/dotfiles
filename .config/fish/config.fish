if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -p /home/linuxbrew/.linuxbrew/bin/
fish_add_path -p $HOME/.cargo/bin
fish_add_path -p $HOME/bins

set -U fish_greeting
set -U EDITOR nvim
set -Ux PKG_CONFIG_PATH /usr/lib/pkgconfig /usr/share/pkgconfig

alias ls "lsd"

while set index (contains -i -- '/home/callum/.pyenv/shims' $PATH)
set -eg PATH[$index]; end; set -e index
set -gx PATH '/home/callum/.pyenv/shims' $PATH
set -gx PYENV_SHELL fish
source '/home/linuxbrew/.linuxbrew/Cellar/pyenv/2.3.2/libexec/../completions/pyenv.fish'
command pyenv rehash 2>/dev/null
function pyenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    source (pyenv "sh-$command" $argv|psub)
  case '*'
    command pyenv "$command" $argv
  end
end
fish_add_path /home/callum/.spicetify
