#!/bin/sh

echo 0 > /sys/kernel/debug/tracing/tracing_on
echo 0 > /sys/kernel/debug/tracing/events/enable
cat /sys/kernel/debug/tracing/trace > trace.log
umount /sys/kernel/debug/
