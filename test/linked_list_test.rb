gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  attr_reader :data, :to_string

  def test_linked_list_has_head_node
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_linked_list_has_current_node
    list = LinkedList.new
    assert_equal nil, list.current_node
  end

  def test_linked_list_can_count
    list = LinkedList.new
    list.append("hello")
    list.append("world")
    list.append("!")
    assert_equal 3, list.count
  end

  def test_linked_list_can_convert_to_string
    list = LinkedList.new
    list.append("deep")
    assert String, list.to_string
  end

  def test_the_head_node_has_an_empty_current_node
    list = LinkedList.new
    assert_equal nil, list.current_node
  end

  def test_the_head_node_has_a_real_current_node
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
  end

  def test_current_node_creates_a_current_node
    list = LinkedList.new
    list.append("deep")
  end

  def test_able_to_prepend_to_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
    list.prepend_node("doowap")
    assert_equal 3, list.count
  end

  def test_if_head_is_nil_prepend_acts_like_append
    list = LinkedList.new
    list.prepend_node("dooooo")
    assert_equal 1, list.count
  end

  def test_able_to_insert_node_at_a_position

    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("doowap")
    list.insert(1, "woo")
    list.insert(2, "woo")
    list.insert(4, "yikes")
    assert_equal 6, list.count
  end

  def test_find_can_locate_elements
    list = LinkedList.new
    list.append("shi")
    list.append("woo")
    list.append("shu")
    assert_equal "shi woo", list.find(1, 2)
  end

  def test_includes_can_find_out_if_something_exists

    list = LinkedList.new
    list.append("shi")
    list.append("woo")
    list.append("shu")
    assert_equal true, list.includes?("shi")
    assert_equal false, list.includes?("hello")
  end

  def test_pop_can_remove_the_last_node

    list = LinkedList.new
    list.append("shi")
    list.append("woo")
    list.append("shu")
    assert_equal 3, list.count
    list.pop
    assert_equal 3, list.count
    assert_nil list.current_node

  end

end
