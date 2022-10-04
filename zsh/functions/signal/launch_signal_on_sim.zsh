#! /usr/bin/env zsh

launch_signal_on_sim () {
  is_mac || return 1

  ios_sim_get_uuid || return 1

  local env_vars=""

  if [ "$#" -eq 1 ] && [[ "$1" == "staging" ]]; then
    env_vars="SIMCTL_CHILD_USE_STAGING=1"
  elif [ "$#" -ne 0 ]; then
    echo "*** Unrecognized arguments: $@ ***"
    return 1
  fi

  local launch_command="$env_vars xcrun simctl launch --terminate-running-process $SELECTED_IOS_SIM_UUID org.whispersystems.signal"

  eval $launch_command
}
