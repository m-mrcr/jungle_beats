require './lib/linked_list'

class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(input)
    collection = input.split(' ')
    collection.each do |item|
      @list.append(item)
    end
    @list.to_string
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Alex #{beats}`
  end

end
