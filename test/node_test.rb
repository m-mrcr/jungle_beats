require './test_helper'

class NodeTest < MiniTest::Test

  def setup
    @node = Node.new("plop")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_attrbutes
    assert_equal "plop", @node.data
    assert_nil nil, @node.next_node
  end
  
end
