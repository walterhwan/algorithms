
class MyQueue
  def initialize
    @store = []
  end

  def enqueue
    @store.push
  end

  def dequeue
    @store.shift
  end

  def peek
    @store.first
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end

class MyStack
  def initialize
    @store = []
  end

  def push
    @store.push
  end

  def pop
    @store.pop
  end

  def peek
    @store.last
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end

class StackQueue
  def initialize
    @in = MyStack.new
    @out = MyStack.new
  end

  def enqueue
    @in.push
  end

  def dequeue
    dump
    @out.pop
  end

  def peek
    dump
    @out.peek
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

  private

  def dump
    if @out.empty?
      @out.push(@in.pop) until @in.empty?
    end
  end
end
