class Linked_list
  attr_accessor :head

  def initialize
    @head = nil
  end

  class Node
    attr_accessor :value, :next_node

    def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end

  
  def append(value)
    if @head.nil?
      @head = Node.new(value, nil)
    else 
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(value, nil)
    end
    
  end

  def prepend(value)
    @head = Node.new(value, @head)  
  end

  def to_string
    
  end

end
