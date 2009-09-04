# The user to run everything under. Preferable, someone with sudo-rights.
set :user, 'root'

# The host to setup.
role :app, '94.247.168.97', :primary => true

# Since this is run as root the the moment, disable sudo for commands.
set :use_sudo, false