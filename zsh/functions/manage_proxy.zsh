#! /usr/bin/env zsh

manage_proxy () {
  if ! is_mac; then
    echo "Only works on Mac"
  fi

  usage () {
    echo "Usage:
    manage_proxy get
    manage_proxy set <proxy_url> <proxy_port>
    manage_proxy enable
    manage_proxy disable
    "
  }

  log () {
    echo "*** $@ ***"
  }

  if [[ "$1" == "get" ]]; then
    if [ "$#" -ne 1 ]; then
      usage
      return 1
    fi
  elif [[ "$1" == "set" ]]; then
    if [ "$#" -ne 3 ]; then
      usage
      return 1
    fi

    networksetup -setwebproxy Wi-Fi "$2" "$3"
    networksetup -setsecurewebproxy Wi-Fi "$2" "$3"
  elif [[ "$1" == "enable" ]]; then
    if [ "$#" -ne 1 ]; then
      usage
      return 1
    fi

    networksetup -setwebproxystate Wi-Fi on
    networksetup -setsecurewebproxystate Wi-Fi on
  elif [[ "$1" == "disable" ]]; then
    if [ "$#" -ne 1 ]; then
      usage
      return 1
    fi

    networksetup -setwebproxystate Wi-Fi off
    networksetup -setsecurewebproxystate Wi-Fi off
  else
    usage
    return 1
  fi

  log "HTTP Proxy:"
  networksetup -getwebproxy Wi-Fi

  echo

  log "HTTPS Proxy:"
  networksetup -getsecurewebproxy Wi-Fi
}
