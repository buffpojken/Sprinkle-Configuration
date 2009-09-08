## Special package, anything that defines a 'source' package means build-essential should be installed for Ubuntu

package :build_essential do
  description 'Build tools'
  
	# Always run these the first thing that's done - in order make sure the sources-list is 
	# up to date.
	pre_install_commands = ["apt-get update"]

	apt 'build-essential' do
    # Update the sources and upgrade the lists before we build essentials
    pre :install, pre_install_commands
  end

end

package :editors do
	description "Install emacs"
	
	apt "emacs" do
		pre :install, "apt-get update"
	end

end
