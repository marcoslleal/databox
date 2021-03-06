#!/usr/bin/env bash

# Define different RVMs
declare -a RVMS=(\
  'ruby-1.9.3-p484@databox' \
  'ruby-2.0.0-p353@databox' \
  # Add others here
)

# Loop over RSMs and exec RSpec
for r in "${RVMS[@]}"; do
  set -o verbose
  echo "Testing $r"
  rvm $r exec bundle install --quiet
  rvm $r exec bundle exec rspec --fail-fast --format=progress
done
