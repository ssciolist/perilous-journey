require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    @append = Node.new(surname)
  end



end
