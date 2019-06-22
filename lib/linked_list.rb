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
