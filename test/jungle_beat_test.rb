require './test/test_helper'

class JungleBeatTest < MiniTest::Test

  def setup
    @jb = JungleBeat.new
  end

  def test_it_exists
    assert_instance_of JungleBeat, @jb
  end

  def test_it_had_attributes
    assert_equal LinkedList, @jb.list.class
    assert_nil @jb.list.head
  end

  def test_it_can_process_input_with_multiple_words
    assert_equal "deep doo ditt", @jb.append("deep doo ditt")
    assert_equal "deep doo ditt woo hoo shu", @jb.append("woo hoo shu")
    assert_equal "deep", @jb.list.head.data
    assert_equal "doo", @jb.list.head.next_node.data
  end

  def test_it_can_count_list_contents
    @jb.append("deep doo ditt woo hoo shu")
    assert_equal 6, @jb.count
  end

  def test_play_makes_sounds
    @jb.append("deep doo ditt woo hoo shu")
    assert @jb.play
  end

end
