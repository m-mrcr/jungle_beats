require './lib/node'

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(node)
    if @head == nil
      @head = Node.new(node)
    else current_node = @head
        while current_node.next_node != nil
          current_node = current_node.next_node
        end
      current_node.next_node = Node.new(node)
    end
    node
  end

  def prepend(node)
    if @head == nil
      @head = Node.new(node)
    else
      current_node = @head
      @head = Node.new(node)
      @head.next_node = current_node
    end
    node
  end

  def insert(index, node)
    if @head == nil
      @head = Node.new(node)
    else
      current_node = @head
      (index - 1).times do
        current_node = current_node.next_node
      end
      new_node = Node.new(node)
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
    end
  end

  def to_string
    string = ""
    if @head == nil
      string
    else
      current_node = @head
      string << current_node.data
      while current_node.next_node != nil
        current_node = current_node.next_node
        string << " " + current_node.data
      end
    end
    string
  end

  def count
    accumulate.count
  end

  def find(index, num_of_elements)
    current_node = @head
    (index).times do
      current_node = current_node.next_node
    end
    string = ""
    num_of_elements.times do
      string << current_node.data + " "
      current_node = current_node.next_node
    end
    string.chop
  end

  def includes?(value)
    current_node = @head
    if current_node.data == value
      true
    else current_node = current_node.next_node
      return true if current_node.data == value
    end
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node.next_node = nil
  end

  private

  def accumulate
    return [] if @head == nil
    accumulator = []
    current_node = @head
    while current_node.next_node != nil
      accumulator << current_node
      current_node = current_node.next_node
    end
    accumulator << current_node
    accumulator
  end

end
