package :directories do 
  description "Setup the required directories for deployment"
  
  noop do 
    puts "Get appname:"
    pre :install, "mkdir -p /sites/#{gets}"    
  end  
  
end





package :deployment, :provides => :deployment_preps do
  requires :directories
end