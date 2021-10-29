#!/usr/bin/env sh
# Run both rails server and guard server (with live-reload)

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#pid_rails=
#pid_guard=
#kill_progs() {
	#[ -n $pid_rails ] && kill -9 $pid_rails
	#[ -n $pid_guard ] && kill -9 $pid_guard
#}
#trap kill_progs SIGINT

#$DIR/rails server &
#pid_rails=$!

#$DIR/bundle exec guard -i
#pid_guard=$!

#wait $pid_rails $pid_guard
#kill -9 $pid_rails $pid_guard 2>/dev/null

# Simple seems to work even with SIGINT
$DIR/rails server &
$DIR/bundle exec guard -i
