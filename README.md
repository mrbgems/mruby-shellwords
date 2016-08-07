# mruby-shellwords [![Build Status](https://travis-ci.org/k0kubun/mruby-shellwords.svg?branch=master)](https://travis-ci.org/k0kubun/mruby-shellwords)

[shellwords](https://github.com/ruby/ruby/blob/v2_3_1/lib/shellwords.rb) for mruby.

## Installation

Add this line to build\_config.rb:

```ruby
MRuby::Build.new do |conf|
  conf.gem github: 'k0kubun/mruby-shellwords'
end
```

or add this line to your application's mrbgem.rake:

```ruby
MRuby::Gem::Specification.new('your-mrbgem') do |spec|
  spec.add_dependency 'mruby-shellwords', github: 'k0kubun/mruby-shellwords'
end
```

## Usage

See [shellwords](https://github.com/ruby/ruby/blob/v2_3_1/lib/shellwords.rb) in Ruby.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/k0kubun/mruby-shellwords.


## License

The same as Ruby.
https://www.ruby-lang.org/en/about/license.txt

