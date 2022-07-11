#! /usr/bin/env zsh

go_to_booted_ios_sim () {
  get_ios_sim_uuid || return 1

  cd "$HOME/Library/Developer/CoreSimulator/Devices/$SELECTED_IOS_SIM_UUID"
}
