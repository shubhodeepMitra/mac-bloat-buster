#!/bin/bash

# Homebrew Cleanup
brew cleanup --prune=all

# Clear User Cache
rm -rf ~/Library/Caches/*

# npm Cache Cleanup
npm cache clean --force

# Maven Cache Cleanup
if [ -d "$HOME/.m2/repository" ]; then
  rm -rf ~/.m2/repository
fi

# Gradle Cache Cleanup
if [ -d "$HOME/.gradle/caches" ]; then
  rm -rf ~/.gradle/caches
fi

# Disk Space Check
FREE_SPACE=$(df / | tail -1 | awk '{print $4}')
FREE_SPACE_GB=$((FREE_SPACE / 1024 / 1024))
THRESHOLD=30
if [ "$FREE_SPACE_GB" -lt "$THRESHOLD" ]; then
  osascript -e 'display notification "⚠️ Your disk space is low!" with title "Mac Cleanup Alert"'
fi

echo "Cleanup finished at $(date)"
