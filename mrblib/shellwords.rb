# === Authors
# * Wakou Aoyama
# * Akinori MUSHA <knu@iDaemons.org>
#
# Licensed under the same term as Ruby.
# https://www.ruby-lang.org/en/about/license.txt
module Shellwords
  def shellescape(str)
    str = str.to_s
    return "''".dup if str.empty?

    str = str.dup
    str.gsub!(/([^A-Za-z0-9_\-.,:\/@\n])/, "\\\\\\1")
    str.gsub!(/\n/, "'\n'")
    str
  end

  module_function :shellescape

  class << self
    alias escape shellescape
  end
end
