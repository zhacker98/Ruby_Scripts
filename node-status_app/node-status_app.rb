#node-status_app.rb
require 'sinatra'
require 'erb'

HostName=`hostname -f`
StartTime=Time.now

get '/' do
  CurDate=`date +%Y-%m-%d`
  Uptime=`uptime`
  Load=`cat /proc/loadavg|cut -d " " -f 1,2,3`
  Disk=`df -h /|grep -v 'Filesystem'`
  Arp=`cat /proc/net/arp |grep -v 'IP'`
  erb :index
end

