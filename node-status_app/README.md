
-------------

# USAGE :

  ## Ruby and Sinatra Gem must be installed
  
  ## ruby /path/to/node-status_app/node-status_app.rb -o <bind_ip> -p <alt_port>
  The following are optional -o <bind_ip> -p <alt_port>
  
  bind_ip = Can be 0.0.0.0 to listen everywhere
  bind_ip is not dependant on alt_port and can be used without changing the default port of 4567
  
  By default without setting the bind_ip, sinatra will listen only on 127.0.0.1
  
-----------

## Installing Ruby and Sinatra on Debian

apt-get install -y -q ruby

gem install sinatra --no-rdoc --no-ri

------------
