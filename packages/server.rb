package :mongrel do
  description 'Mongrel Application Server'
  gem 'mongrel'
  version '1.1.5'
end

package :mongrel_cluster, :provides => :appserver do
  description 'Cluster Management for Mongrel'
  gem 'mongrel_cluster'
  version '1.0.5'
  requires :mongrel
end

package :thin, :provides => :appserver do
	description "Thin - Ruby App Server"
	gem "thin"
end

package :nginx, :provides => :webserver do
	description 'nginx 0.7.61 - Latest Stable HTTP Server'
	version '0.7.61'
	apt "nginx"
end

package :apache, :provides => :webserver do
  description 'Apache 2 HTTP Server'
  version '2.2.13'
  source "http://www.apache.org/dist/httpd/httpd-#{version}.tar.bz2" do
    enable %w( mods-shared=all proxy proxy-balancer proxy-http rewrite cache headers ssl deflate so )
    prefix "/opt/local/apache2-#{version}"
    post :install, 'install -m 755 support/apachectl /etc/init.d/apache2', 'update-rc.d -f apache2 defaults'
  end
  requires :apache_dependencies
end

package :apache_dependencies do
  description 'Apache 2 HTTP Server Build Dependencies'
  apt %w( openssl libtool mawk zlib1g-dev libssl-dev )
end
