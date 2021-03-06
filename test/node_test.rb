gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'simplecov'
SimpleCov.start
require './lib/node.rb'

class NodeTest < Minitest::Test

  def test_a_node_can_be_created
    node = Node.new("plop")
    assert_equal Node, node.class
    assert_equal "plop", node.data
  end

  def test_a_node_can_hold_different_data
    node = Node.new("Cayce Pollard")
    assert_equal "Cayce Pollard", node.data
  end

  def test_next_node_is_nil_by_default
    node = Node.new("Hubertus Bigend")

    assert_equal nil, node.next_node
  end


end
