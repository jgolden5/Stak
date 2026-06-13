#!/bin/bash

#Exit codes
FAILED_LOCAL_INSTALL=1
FAILED_TO_SOURCE=2

initial_dialogue() {
  echo -n "Setting up stak application."
  sleep 0.25
  echo -n "."
  sleep 0.25
  echo -n "."
  sleep 0.25
}

local_install() {
  install -m 755 bin/stak '/usr/local/bin/stak'
  if [[ $? -gt 0 ]]; then
    echo "❌ Setup failed (failed to source)"
    return $FAILED_LOCAL_INSTALL
  fi
}

source_app() {
  source bin/stak >/dev/null
  if [[ $? == 0 ]]; then
    echo "Setup complete ✅"
  else
    echo "❌ Setup failed (failed to source)"
    return $FAILED_TO_SOURCE
  fi
}

main() {
  initial_dialogue
  local_install
  source_app
}

main
