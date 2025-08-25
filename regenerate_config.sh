#! /bin/bash

set -e

# Suppress CircleCI CLI telemetry/update messages that can pollute output
export CIRCLECI_CLI_TELEMETRY_OPTOUT=1
export CIRCLECI_CLI_SKIP_UPDATE_CHECK=1

# Repack orb source into a single config file
# Some environments print update/telemetry errors to stdout; filter them out
circleci config pack . 2>/dev/null | \
  sed '/^Error loading telemetry configuration:/d;/^Error checking for updates:/d;/^Please contact support\./d' \
  > .circleci/config.yml
