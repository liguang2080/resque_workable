module ResqueWorkable
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      require File.expand_path(File.dirname(__FILE__) + '/resque_workable')
    end
  end
end
