#
#
#
# Authors:
#   Matt Cable <wozz@wookie.net>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != freebsd* ]]; then
  return 1
fi

#
# Paths
#

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)

#
# Aliases
#

#quicksearch through the ports

function quicksearch {
    make -f /usr/ports/Makefile quicksearch name="$1" | less
}
