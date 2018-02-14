#test_app.rb
require 'sinatra'
require 'erb'

TestVar=`date +%Y-%m-%d`

get '/' do
  Uptime=`uptime`
  Load=`cat /proc/loadavg|cut -d " " -f 1,2,3`
  Disk=`df -h /|grep -v 'Filesystem'`
  Arp=`cat /proc/net/arp |grep -v 'IP'`
  erb :index
end

