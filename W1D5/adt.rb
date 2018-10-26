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
  end

  def set(key, value)
    exists = false
    map.each_with_index do |pair, i|
      if pair.first == key
        map[i] = [key, value]
        return
      end
    end
    map << [key, value] unless exists
  end

  def get(key)
    map.each { |k,v| return v if k == key }
    nil
  end

  def delete(key)
    map.each { |k,v| map.delete([k,v]) if k == key }
  end

  def show
    map.each { |k,v| puts "#{k} => #{v}" }
  end
end
