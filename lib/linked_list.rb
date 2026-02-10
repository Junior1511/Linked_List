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
    storage = []
    current = @head

    while current != nil
      storage << current.value
      current = current.next_node
    end
    storage << "nil"
    return storage.join(" -> ")
  end

  def pop_head
    value_of_head = @head.each_value
    if @head != nil
      @head = @head.next_node
    end
    return value_of_head
  end

  def size
    current = @head
    size = 0
    while current != nil
      size += 1
      current = current.next_node
    end
    return size
  end

  def head
    return nil if @head.nil?
    @head.value
  end

  def tail
    return nil if @head.nil?
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    return current.value
  end

  def at(index)
    return nil if @head.nil?
    num_of_iterations = index
    current = @head
    num_of_iterations.times {
      return nil if current.next_node.nil?
      current = current.next_node
    }
    return current.value
  end

  def index(value)
    return nil if @head.nil?
    index = 0
    current = @head
    while current != nil
      return index if current.value == value
      current = current.next_node
      index += 1
    end
  end

  def contains?(value)
    current = @head
    while current != nil
      return true if current.value == value
      current = current.next_node
    end
    return false
  end

end
