#!/bin/bash
:q
:q!


set -eux
if [ $# != 2 ] ;
then
  echo "Usage $0 <application> <trace-output-dir>"
  exit 1
fi
#sudo lttng-sessiond --daemonize

lttng create my-session --output="$2"
lttng enable-event --userspace hello_world:my_first_tracepoint
lttng enable-event --kernel sched_process_fork,sched_switch,sched_process_exec,sched_process_exit
#lttng enable-event --kernel --syscall --all
lttng add-context -k -t pid -t tid
lttng add-context -u -s my-session -t pthread_id -t procname
lttng start
$1
lttng stop
lttng destroy my-session
chown -R $(whoami) "$2"

