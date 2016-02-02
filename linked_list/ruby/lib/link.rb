require "byebug"

# test = File.read("spec/test_input.txt").split("\n")

class Link
  attr_reader :next, :prev, :value

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

  def insert_left(link)
    @prev = link
    link.next = self

    @next
  end

  def remove
    @prev.next = @next
    @next.prev = @prev

    @next, @prev = nil, nil
    nil
  end

  protected
  attr_writer :prev, :next, :value
end
