#! /usr/bin/env zsh

ios_sim_boot () {
  ios_sim_get_uuid || return 1

  xcrun simctl boot $SELECTED_IOS_SIM_UUID
}
