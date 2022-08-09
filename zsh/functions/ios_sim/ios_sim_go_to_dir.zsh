#! /usr/bin/env zsh

ios_sim_go_to_dir () {
  is_mac || return 1

  ios_sim_get_uuid || return 1

  cd "$HOME/Library/Developer/CoreSimulator/Devices/$SELECTED_IOS_SIM_UUID"
}
