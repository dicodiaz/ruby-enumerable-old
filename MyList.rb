class MyList
  include MyEnumerable

  def initialize(list) 
    @list = list
  end

  def each
    yield(@list)
  end
end

myList = MyList.new([1, 2, 3, 4])
myList.each { |elem| puts elem }