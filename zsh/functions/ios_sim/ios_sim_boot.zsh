#! /usr/bin/env zsh

ios_sim_boot () {
  is_mac || return 1

  ios_sim_get_uuid || return 1

  xcrun simctl boot $SELECTED_IOS_SIM_UUID

  open -b com.apple.iphonesimulator
}
