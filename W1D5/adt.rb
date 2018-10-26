class MyStack
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push(el)
    stack.push(el)
  end

  def pop
    stack.pop
  end

  def peek
    stack.last
  end
end

class MyQueue
  attr_accessor :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    queue.push(el)
  end

  def dequeue
    queue.shift
  end

  def peek
    queue.first
  end
end

class MyMap
  attr_accessor :map, :temp

  def initialize
    @map = Array.new(){[]}
    map << [1,5]
  end

  def set(key, value)

  end

  def get(key)

  end

  def delete(key)
    map.each do |k,v|
      map.delete([k,v]) if k == key
    end
  end

  def show

  end
end
