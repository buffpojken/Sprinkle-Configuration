package :subversion, :provides => :svn do
  description 'Subversion Version Control'
  apt 'subversion'
end


package :git_scm, :provides => :git do
  description 'Git Distributed Version Control'
  version '1.7.3.1'
  source "http://kernel.org/pub/software/scm/git/git-#{version}.tar.gz"
  requires :git_dependencies
end


package :git_dependencies do
  description 'Git Build Dependencies'
  apt 'tk'
  apt 'git-core'
end
