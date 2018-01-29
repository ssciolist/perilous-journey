require "minitest"
require "minitest/pride"
require "minitest/autorun"

require "./lib/node"

class NodeTest < Minitest::Test

  def test_node_exists
    my_node = Node.new("Burke")
    assert_instance_of Node, my_node
  end

  def test_node_has_surname
    my_node = Node.new("Burke")
    assert_equal "Burke", my_node.surname
  end

  def test_next_node_sets_to_nil
    my_node = Node.new("Burke")
    assert_equal nil, my_node.next_node
  end

end
