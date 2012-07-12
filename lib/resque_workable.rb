require "resque_workable/version"


if defined? Rails
  require File.expand_path(File.dirname(__FILE__) + '/resque_workable/railtie')
end