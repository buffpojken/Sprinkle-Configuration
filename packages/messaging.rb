package :activemq, :provides => :messaging do
  description 'Apache ActiveMQ - An open-source message queue'
  version '5.4.2'

  noop do
    pre :install, 'wget --directory-prefix=/usr/local/sources http://www.apache.org/dist/activemq/apache-activemq/5.4.2/apache-activemq-5.4.2-bin.tar.gz'    
    pre :install, 'ls && cd /usr/local/build && sudo tar zxvf /usr/local/sources/apache-activemq-5.4.2-bin.tar.gz'
    pre :install, 'ln -sf /usr/local/build/apache-activemq-5.4.2/bin/activemq /usr/local/bin/activemq'
  end
  
  requires :java_sdk
end

package :ninja, :provides => :magic_beans do
  
  requires :activemq
  
end

package :java, :provides => :java_sdk do 

  apt 'openjdk-6-jre' do 
    pre :install, "apt-get update"
  end

    
end

