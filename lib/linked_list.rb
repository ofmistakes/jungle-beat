require './lib/node.rb'

class LinkedList < Node
  attr_reader :data, :position
  attr_accessor :head, :node, :current_node, :next_node, :moving_head

  def initialize
    @head = node
  end

  def append(data)

    if head.nil?
      @head = Node.new(data)
    else
      make_current_node(data)
    end

  end

  def make_current_node(data)
    current_node = @head
    until current_node.next_node.nil?          # looks to see if there's a nil node. if there is...
      current_node = current_node.next_node    # looks for next node, sets that as local variable and then keeps going
    end
    current_node.next_node = Node.new(data)    # ... puts data there.

  end

  def count

    if @head == nil
      0
    else
      current_node = @head.next_node
      count = 1
      until current_node.nil?
          count += 1
          current_node = current_node.next_node
        end
    end
    count   # sends number of elements to terminal
  end

  # def move_through_and_count(current_node, count)
  #   until current_node.nil?
  #     count += 1
  #     current_node = current_node.next_node
  #   end
  # end

  def to_string
    string = ""
    string << @head.data
    current_node = @head.next_node
    until current_node.nil?
      string << " " + current_node.data
      current_node = current_node.next_node
    end
    string
  end

  def prepend_node(data)
      if @head.nil?                     # if this is called on empty head, proceeds like append
        @head = Node.new(data)
      else
        local_head = @head              # store head as a local variable
        @head = Node.new(data)          # reassign head as a new node
        @head.next_node = local_head    # assign the original head node to head.next_node
      end
  end

  def insert(position, data)

      # count number of nodes

      # if the next node's number is position insert new node here

      # at the same time, move existing nodes down

  end


end
