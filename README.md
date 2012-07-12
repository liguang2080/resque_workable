# ResqueWorkable

resque workable helper

## Installation

Add this line to your application's Gemfile:

    gem 'resque_workable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install resque_workable

## Usage
	参数只是是string number 且最好使用asicc字符
	
	可以让类的类方法使用delay的形式
	
	TestTask.delay(:google, "sina")
	
	等同于
	
	Resque.enqueue(TestTask, :google, "sina")

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
