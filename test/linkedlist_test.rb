require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "pry"

require "./lib/linkedlist"


class Test_Linkedlist < Minitest::Test

  def test_linked_list_exists
    my_list = LinkedList.new
    assert_instance_of LinkedList, my_list
  end

  def test_linked_list_head_sets_to_nil
    my_list = LinkedList.new
    assert_nil my_list.head
  end

  def test_linked_list_append_adds_node
    my_list = LinkedList.new
    my_list.append("Rhodes")
    my_list.append("Hardy")
    my_list.append("Another Name")
    assert_equal "Rhodes", my_list.head.surname
    assert_equal "Hardy", my_list.head.next_node.surname
    assert_equal "Another Name", my_list.head.next_node.next_node.surname
  end

  def test_appended_linked_list_returns_modified_list
    my_list = LinkedList.new
    my_node = my_list.append("West")
    assert_instance_of LinkedList, my_list
    assert_instance_of Node, my_list.head
    assert_equal "West", my_list.head.surname
  end

  def test_appended_linked_list_head_next_node_returns_nil
    my_list = LinkedList.new
    my_node = my_list.append("West")
    assert_equal nil, my_list.head.next_node
  end

  def test_appended_linked_list_count_reflects_append
    my_list = LinkedList.new
    my_list.append("West")
    my_list.append("Rhodes")
    my_list.append("Another name")
    assert_equal 3, my_list.count
  end

  def test_list_to_string_method
    my_list = LinkedList.new
    my_list.append("West")
    assert_equal "The West Family", my_list.to_string
  end

  def test_multi_families_to_string_method
    my_list = LinkedList.new
    my_list.append("West")
    my_list.append("Hardy")
    assert_equal "The West Family, followed by the Hardy family", my_list.to_string
  end

  def test_prepend_sets_surname_to_head
    my_list = LinkedList.new
    my_list.append("Brooks")
    my_list.append("Henderson")
    my_list.prepend("McKinney")
    assert_equal "McKinney", my_list.head.surname
    assert_equal "Brooks", my_list.head.next_node.surname
  end

  def test_insert_puts_family_in_preserves_list
    my_list = LinkedList.new
    my_list.append("Brooks")
    my_list.append("Henderson")
    my_list.insert(1, "Lawson")
    assert_equal "Brooks", my_list.head.surname
    assert_equal "Lawson", my_list.head.next_node.surname
    assert_equal "Henderson", my_list.head.next_node.next_node.surname
  end




end
