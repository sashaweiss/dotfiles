#! /usr/bin/env zsh

# [Heavy inspiration from Nora Trapp](https://gist.github.com/Imperiopolis-Signal/2a99392ff026ec918d6328643b5292ce)

ios_sim_get_uuid () {
  IFS='\n'
  local sim_names=("${(@f)$(xcrun simctl list devices | grep "^    " | sort | sed 's/^    //')}")
  local sim_uuids=("${(@f)$(xcrun simctl list devices | grep "^    " | sort | awk -F'[\(|\)]' '{ print $(NF-3) }')}")
  unset IFS

  if [ "${#sim_uuids[@]}" -eq 0 ]; then
    echo "No sims found!"
    return 1
  else
    echo "Simulators: \n"

    for ((i = 1; i <= $#sim_names; i++)); do
      echo "$((i-1)). $(echo ${sim_names[$i]} | xargs)"
    done

    echo -n "\nWhich simulator? "
    read number

    local selected_uuid=${sim_uuids[$((number+1))]}
  fi

  SELECTED_IOS_SIM_UUID="$selected_uuid"
}
