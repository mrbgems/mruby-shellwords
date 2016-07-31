MRuby::Gem::Specification.new('mruby-shellwords') do |spec|
  # https://www.ruby-lang.org/en/about/license.txt
  spec.license = 'BSDL'
  spec.authors = [
    'Wakou Aoyama',
    'Akinori MUSHA',
    'Takashi Kokubun',
  ]
  spec.add_dependency 'mruby-onig-regexp'
end
