package :sphinx, :provides => :search do
  description 'MySQL full text search engine'
  version '0.9.9'
  source "http://www.sphinxsearch.com/downloads/sphinx-0.9.9.tar.gz"
  requires :mysql_dev
  requires :mysql_driver
end

package :mysql_dev do
  description 'MySQL Database development package'
  apt %w( libmysqlclient15-dev )
end
