# This is my configuration for Vim

My workflow is based around two things:

- Vim
- tmux + tmuxifier

# Use

## Without tmux

1. Set up terminal colors to match [solarized](http://ethanschoonover.com/solarized)
  - If using `gnome-terminal`, look at the 16/8 column under "The Values" to see the palette number of each color
2. Clone this repo to `~/.vim`
3. Link `~/.vimrc` to `~/.vim/vimrc`

## With tmux

Same as without, but you also need to force tmux to use 256 colors:

1. Add `set -g default-terminal "screen-256color"` to your `~/.tmux.conf`
2. Add `export TERM="screen-256color"` to your `~/.bashrc`
3. Add `alias tmux="tmux -2"` to your `~/.bashrc`

