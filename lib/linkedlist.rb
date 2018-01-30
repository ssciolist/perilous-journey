require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    @head = Node.new(surname)
  end

  def count
    count = 0

    if @head.next_node == nil
      count +=1
    end

    count
  end

  def to_string
    "The #{@head.surname} Family"
  end

end
