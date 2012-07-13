# -*- encoding : utf-8 -*-
require "resque_workable/version"

# 可以让类的类方法使用delay的形式
# TestTask.delay(:google, "sina")
# delay_at 须配合 resque_scheduler使用
# TestTask.delay_at(Time.zone.now + 5.minuts, :google, "sina")
# 等同于
# Resque.enqueue(TestTask, :google, "sina")

module ResqueWorkable

  def self.included(base_class)
    base_class.class_eval do
      @queue = self.name.underscore
    end
    base_class.extend ClassMethods
  end

  module ClassMethods
    def perform(method, *args)
      self.send(method, *args)
    end

    def delay(method, *args)
      Resque.enqueue(self, method.to_sym, *args)
    end

    def delay_at(at_time, method, *args)
      if defined?(Rails) && Rails.env == "production"
        Resque.enqueue_at at_time, self, method, *args
      else
        Resque.enqueue self, method, *args
      end
    end
  end

end
