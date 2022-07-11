#! /usr/bin/env zsh

# [Stolen from Nora Trapp](https://gist.github.com/Imperiopolis-Signal/2a99392ff026ec918d6328643b5292ce)

ios_sim_get_uuid () {
    IFS='\n'
    local sim_names=("${(@f)$(xcrun simctl list | grep Booted | awk -F'[\(|\)]' '{ print $1 }')}")
    local sim_uuids=("${(@f)$(xcrun simctl list | grep Booted | awk -F'[\(|\)]' '{ print $(NF-3) }')}")
    unset IFS

    if [ "${#sim_uuids[@]}" -eq 0 ]; then
      echo "No sims found!"
      return 1
    else
      echo "Booted Simulators: "

      for ((i = 1; i <= $#sim_names; i++)); do
        echo "$i. $(echo ${sim_names[$i]} '('${sim_uuids[$i]}')' | xargs)"
      done

      echo -n "\nWhich simulator? "
      read number

      local selected_uuid=${sim_uuids[$number]}
    fi

    SELECTED_IOS_SIM_UUID="$selected_uuid"
}
