require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "pry"

require "./lib/linkedlist"


class Test_Linkedlist < Minitest::Test

  def test_linked_list_exists
    my_list = LinkedList.new()
    assert_instance_of LinkedList, my_list
  end

  def test_linked_list_head_sets_to_nil
    my_list = LinkedList.new()
    assert_equal nil, my_list.head
  end

  def test_linked_list_append_adds_node
    my_list = LinkedList.new()
    # binding.pry
    my_node = my_list.append("West")
    assert_instance_of Node, my_node
  end

  # def test_appended_linked_list_returns_modified_list
  #   my_list = LinkedList.new()
  #   my_node = my_list.append("West")
  #   assert_equal my_list, my_node
  # end

  def test_idk
    #code
  end

  def test_list_count
    #code
  end

  def test_list_to_string_method
    #code
  end

end
