require "byebug"

# test = File.read("spec/test_input.txt").split("\n")

class Link

  attr_accessor :next, :prev, :value

  def initialize(value = nil)
    @value = value
    @next, @prev = nil, nil
  end

  def to_s
    left = @value
    right = @next.nil? ? "nil" : @next.value
    
    "#{left} -> #{right}"
  end

  def insert_right(link)
    @next = link
    link.prev = self

    @next
  end

end
