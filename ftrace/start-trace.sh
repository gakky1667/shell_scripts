#!/bin/sh

mount -t debugfs nodev /sys/kernel/debug/
echo "Available Tracers : `cat /sys/kernel/debug/tracing/available_tracers`"
echo "Available Events  :"
cat /sys/kernel/debug/tracing/available_events
echo 0 > /sys/kernel/debug/tracing/tracing_on


echo 27012 > /sys/kernel/debug/tracing/set_ftrace_pid


echo 0 > /sys/kernel/debug/tracing/trace
echo 1 > /sys/kernel/debug/tracing/events/enable
echo nop > /sys/kernel/debug/tracing/current_tracer
echo sched:sched_switch sched:sched_wakeup sched:sched_wakeup_new > /sys/kernel/debug/tracing/set_event

echo  27012 > set_ftrace_pid
echo "Trace Start"
echo 1 > /sys/kernel/debug/tracing/tracing_on

