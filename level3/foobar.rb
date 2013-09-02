class FooBar
  puts "I am inside #{self}"

  def foo
    puts "foo (arity 0) is executing"
  end

  def bar(x, y)
    puts "bar (arity 2), called with arg: #{[x, y]}, is executing and calling foo"
    foo
    puts "back in bar"
  end

  def baz(*args)
    puts "baz (flexible arity), called with args: #{args}, is executing"
  end
end