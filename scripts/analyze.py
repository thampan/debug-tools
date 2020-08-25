#!/usr/bin/env python3
import babeltrace
import sys

trace_collection = babeltrace.TraceCollection()
trace_path = sys.argv[1]

trace_collection.add_traces_recursive(trace_path, 'ctf')
for event in trace_collection.events:
    if 'sched_process_exec' == event.name:
        prev_comm = str(event['filename'])
        pid = str(event['pid'])
        print(prev_comm, pid)

    if 'sched_process_exit' == event.name:
        prev_comm = str(event['comm'])
        pid = str(event['pid'])
        print(prev_comm, pid)

    #print(event.timestamp, event.pid, event.tid, event.name)
