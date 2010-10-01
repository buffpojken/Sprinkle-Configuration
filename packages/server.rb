package :thin, :provides => :appserver do
	description "Thin - Ruby App Server"
	gem "thin"
end

package :nginx, :provides => :webserver do
	description 'nginx 0.8.52 - Latest Stable HTTP Server'
	version '0.8.52'
	apt "nginx"
end

