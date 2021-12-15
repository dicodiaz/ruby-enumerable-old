module MyEnumerable
  def all?
    result = true
    each { |elem| result = false unless yield(elem) }
    result
  end

  def any?
    result = false
    each { |elem| result = true if yield(elem) }
    result
  end

  def filter
    result = []
    each { |elem| result.unshift(elem) if yield(elem) }
    result
  end
end
