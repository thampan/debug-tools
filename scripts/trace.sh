#!/bin/bash
set -eu
if [ $# != 2 ] ;
then
  echo "Usage $0 <application> <trace-output-dir>"
  exit 1
fi
sudo lttng-sessiond --daemonize
lttng create my-session --output="$2"
lttng enable-event --userspace hello_world:my_first_tracepoint
lttng enable-event --kernel sched_switch,sched_process_fork
lttng start
"$1"
lttng stop
lttng destroy

