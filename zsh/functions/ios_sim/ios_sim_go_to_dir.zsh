#! /usr/bin/env zsh

ios_sim_go_to_dir () {
  ios_sim_get_uuid || return 1

  cd "$HOME/Library/Developer/CoreSimulator/Devices/$SELECTED_IOS_SIM_UUID"
}
