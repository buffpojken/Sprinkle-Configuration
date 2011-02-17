# The user to run everything under. Preferable, someone with sudo-rights.
set :user, 'buffpojken'


# The host to setup.
role :app, '46.137.110.199', :primary => true

# Since this is run as root the the moment, disable sudo for commands.


default_run_options[:pty] = true