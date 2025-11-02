#!/usr/bin/env bash
# simple-interest.sh
# Usage: ./simple-interest.sh [principal rate time]
set -e

if [ "$#" -eq 3 ]; then
  P=$1; R=$2; T=$3
else
  read -p "Principal (P): " P
  read -p "Rate (R %): " R
  read -p "Time (T years): " T
fi

# compute SI = (P * R * T) / 100
SI=$(awk "BEGIN{printf \"%.2f\", ($P * $R * $T)/100}")
echo "Simple Interest = $SI"
