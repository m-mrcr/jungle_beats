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
    assert_equal "doop", @list.head.data
  end

  def test_it_can_display_count_of_single_appended_node
    @list.append("doop")
    assert_equal 1, @list.count
  end

  def test_it_can_display_attribute_of_single_node_as_part_of_string
    @list.append("doop")
    assert_equal "doop", @list.to_string
  end

  def test_it_can_functionally_have_multiple_nodes
    @list.append("doop")
    assert_nil @list.head.next_node
    @list.append("deep")
    assert_nil @list.head.next_node.next_node
    assert_equal "deep", @list.head.next_node.data
  end

  def test_it_can_return_count_for_multiple_nodes
   @list.append("doop")
   assert_equal 1, @list.count
   @list.append("deep")
   assert_equal 2, @list.count
  end

  def test_it_can_convert_multiple_nodes_to_string
    @list.append("doop")
    assert_equal "doop", @list.to_string
    @list.append("deep")
    assert_equal "doop deep", @list.to_string
  end

  def test_it_can_prepend_data
    @list.append("plop")
    assert_equal "plop", @list.to_string
    @list.append("suu")
    assert_equal "plop suu", @list.to_string
    @list.prepend("dop")
    assert_equal "dop plop suu", @list.to_string
    assert_equal 3, @list.count
  end

  def test_it_can_insert_data_given_an_index
    @list.append("plop")
    assert_equal "plop", @list.to_string
    @list.append("suu")
    assert_equal "plop suu", @list.to_string
    @list.prepend("dop")
    assert_equal "dop plop suu", @list.to_string
    @list.insert(1, "woo")
    assert_equal "dop woo plop suu", @list.to_string
    assert_equal 4, @list.count
  end

  def test_it_can_find_find_by_index_and_num_of_nodes
    @list.append("deep")
    @list.append("woo")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    assert_equal "deep woo shi shu blop", @list.to_string
    assert_equal "shi", @list.find(2, 1)
    assert_equal "woo shi shu", @list.find(1, 3)
  end

  def test_it_can_tell_whether_it_includes_a_given_value
    @list.append("deep")
    @list.append("woo")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    assert @list.includes?("deep")
    refute @list.includes?("dep")
  end

  def test_pop_removes_last_word
    @list.append("deep")
    @list.append("woo")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    assert_equal "deep woo shi shu blop", @list.to_string
    @list.pop
    assert_equal "deep woo shi shu", @list.to_string
    @list.pop
    assert_equal "deep woo shi", @list.to_string
  end

end
