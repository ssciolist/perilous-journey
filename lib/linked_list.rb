require "./lib/node"
require "pry"

class LinkedList < Node
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    if @head == nil
      @head = Node.new(surname)
    else
      current_node = @head

      until current_node.next_node.nil?
        current_node = current_node.next_node
      end

      current_node.next_node = Node.new(surname)
    end
  end

  def count
    count = 0

    if @head.next_node == nil
      count +=1
    else
      current_node = @head
      while current_node != nil
        count +=1
        current_node = current_node.next_node
      end
    end

    count
  end

  def to_string
    firstfamily = "The #{@head.surname} Family"

    if @head.next_node.nil?
      allthefams = firstfamily
    else
      current_node = @head

      until current_node.next_node == nil
        familyname = current_node.next_node.surname
        nextfamily = ", followed by the #{familyname} family"
        allthefams = firstfamily += nextfamily
        current_node = current_node.next_node
      end
    end

    allthefams
  end

  def prepend(surname)
    newhead = @head
    @head = Node.new(surname)
    @head.next_node = newhead
  end

  def insert(position, surname)
    newnode = Node.new(surname)
    current_node = @head

    looper = position - 1
    looper.times do
      current_node = current_node.next_node
    end

    newnode.next_node = current_node.next_node
    current_node.next_node = newnode
  end

  # def find(position, number_of_families)
  #   current_node = @head
  #
  #   position.times do
  #     current_node = current_node.next_node
  #   end
  #
  #   familynames = []
  #   number_of_families.times do
  #     binding.pry
  #     familynames << "the #{current_node.surname} family"
  #     current_node = current_node.next_node
  #   end
  #   familynames.join(", followed by ").sub("t", "T")
  #
  # end

  def includes?(search_name)
    current_node = @head

    until current_node.surname == search_name || current_node.next_node.nil?
      current_node = current_node.next_node
    end

    if current_node.surname == search_name
      true
    else
      false
    end
  end

  def pop
    current_node = @head

    while current_node.next_node != nil
      previous_node = current_node
      current_node = current_node.next_node
    end

    previous_node.next_node = nil
  end

end
