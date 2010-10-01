package :directories do 
  description "Setup the required directories for deployment"
  
  noop do 
    puts "Get appname:"
    pre :install, "mkdir -p /sites/#{gets}"    
  end  
  
end


package :deployment_user do
  description "Setup a deployment-user"
  
  noop do
    puts "Get username:"
    username = gets
    puts "Get password:"
    password = gets
    pre :install , "useradd -m -p `mkpasswd #{password}` #{username}"
    
  end
  
end



package :deployment, :provides => :deployment_preps do
  requires :directories
  requires :deployment_user
end