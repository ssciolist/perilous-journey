require "./lib/node"

class LinkedList
  attr_reader :head


  def initialize
    @head = nil
  end

  def append(surname)
    if @head == nil
      @head = Node.new(surname)
    else
      next_node = Node.new(surname)
    end
  end

  def count
    count = 0

    if @head.next_node == nil
      count +=1
    elsif
      @anothernode.next_node == nil
    end

    count
  end

  def to_string
    "The #{@head.surname} Family"
  end

end
