require "byebug"

# test = File.read("spec/test_input.txt").split("\n")

class Link
  attr_reader :next, :prev, :value
  attr_writer :value

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
  attr_writer :prev, :next
end

class SentinelLink < Link

  def initialize(side = nil)
    raise "incorrect side choice" unless [:first, :last].include?(side)
    @side = side
  end

  def value
    raise "Sentinel don't contain data"
  end

  def value=(data)
    raise "cannot set values on sentinel"
  end



end
