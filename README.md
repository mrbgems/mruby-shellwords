# mruby-shellwords

Welcome to your new mrbgem! In this directory, you'll find the files you need to be able to package up your Ruby library into a mrbgem. Put your Ruby code in the file `mrblib/shellwords`.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to build\_config.rb:

```ruby
MRuby::Build.new do |conf|
  conf.gem github: 'k0kubun/mruby-shellwords'
  # or
  conf.gem mgem: 'mruby-shellwords'
end
```

or add this line to your application's mrbgem.rake:

```ruby
MRuby::Gem::Specification.new('your-mrbgem') do |spec|
  spec.add_dependency 'mruby-shellwords', github: 'k0kubun/mruby-shellwords'
  # or
  spec.add_dependency 'mruby-shellwords', mgem: 'mruby-shellwords'
end
```

## Usage

TODO: Write usage instructions here

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/k0kubun/mruby-shellwords.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

