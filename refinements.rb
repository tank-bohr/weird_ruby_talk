#!/usr/bin/env ruby

require "pp"

module PrependAndAppend
  refine Array do
    alias_method :append,  :<<

    alias_method :prepend, :unshift
  end
end

module Access
  refine Array do
    def from(position)
      self[position, length] || []
    end
  end

  refine String do
    def from(position)
      self[position..-1]
    end
  end
end

class Dummy
  using PrependAndAppend
  using Access

  def run
    puts 'Hello'.from(1)
    pp [1, 2, 3].prepend(0)
    pp [0, 1, 2, 3].from(2)
  end
end

Dummy.new.run

begin
  puts 'Hello'.from(1)
rescue => e
  puts e
end
