require './test/test_helper'

class LinkedListTest < MiniTest::Test

  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_it_has_attributes
    assert_nil @list.head
  end

  def test_it_can_append_to_head
    @list.append("doop")
    assert_instance_of Node, @list.head
  end

  def test_it_can_display_count_of_single_appended_node
    @list.append("doop")
    assert_equal 1, @list.count
  end

  def test_it_can_display_attribute_of_single_node_as_part_of_string
    @list.append("doop")
    assert_equal "doop", @list.to_string
  end

end
