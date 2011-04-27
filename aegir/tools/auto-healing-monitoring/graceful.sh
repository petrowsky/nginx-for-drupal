#!/bin/bash

action()
{
  rm -f -r /opt/tmp
  mkdir -p /opt/tmp
  chmod 777 /opt/tmp
  rm -f /opt/tmp/sess*
  rm -f /tmp/*error*
  rm -f /tmp/sess*
  rm -f -r /tmp/*
  rm -f /opt/tmp/*error*
  rm -f /opt/tomcat6/logs/*
  touch /var/xdrago/log/graceful.done
  rm -f /var/xdrago/log/wait-for-octopus-barracuda-running
}

if test -f /var/run/octopus_barracuda.pid ; then
  touch /var/xdrago/log/wait-for-octopus-barracuda-running
  exit
else
  action
fi