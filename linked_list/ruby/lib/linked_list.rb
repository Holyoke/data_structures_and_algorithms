require "byebug"

# test = File.read("spec/test_input.txt").split("\n")

class Link
  def initialize(value = nil)
    @value = value
    @next, @prev = nil, nil
  end

  def to_s
    "%{@value} -> ${@next}"
  end

  def insert_right(link)
    @next = link
    @next
  end
end
