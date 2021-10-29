#!/usr/bin/env sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/bundle exec guard -i
