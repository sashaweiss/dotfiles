#! /usr/bin/env zsh

# Flash the terminal. If we're in tmux, pass the escape codes out to
# the terminal emulator.
bell () {
  local tty
  if [[ -n "$TMUX" ]]; then
    tty=$(tmux display-message -p '#{client_tty}')
  else
    tty=$(tty)
  fi

  printf '\033]11;#2d4a7e\007' > "$tty"
  sleep 0.15
  printf '\033]111;\007' > "$tty"
}
