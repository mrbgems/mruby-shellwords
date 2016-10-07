# === Authors
# * Wakou Aoyama
# * Akinori MUSHA <knu@iDaemons.org>
#
# Licensed under the same term as Ruby.
# https://www.ruby-lang.org/en/about/license.txt
#
# Original:
# https://github.com/ruby/ruby/blob/v2_3_1/lib/shellwords.rb
module Shellwords
  SHELLESCAPE_REGEXP = /([^A-Za-z0-9_\-.,:\/@\n])/
  NEWLINE_REGEXP     = /\n/

  def shellescape(str)
    str = str.to_s
    return "''".dup if str.empty?

    str = str.dup
    str.gsub!(SHELLESCAPE_REGEXP, "\\\\\\1")
    str.gsub!(NEWLINE_REGEXP, "'\n'")
    str
  end

  module_function :shellescape

  class << self
    alias escape shellescape
  end

  def shelljoin(array)
    array.map { |arg| shellescape(arg) }.join(' ')
  end

  module_function :shelljoin

  class << self
    alias join shelljoin
  end
end

class String
  def shellescape
    Shellwords.escape(self)
  end
end

class Array
  def shelljoin
    Shellwords.join(self)
  end
end
