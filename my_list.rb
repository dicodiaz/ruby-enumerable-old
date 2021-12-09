require './my_enumerable'
class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each do |number|
      block.call(number)
    end
  end
end

list = MyList.new([1, 2, 3, 4])

puts(list.all? { |e| e < 5 }) # => True
puts(list.all? { |e| e > 5 }) # => False

puts(list.any? { |e| e == 2 }) # => True
puts(list.any? { |e| e == 5 }) # => False
