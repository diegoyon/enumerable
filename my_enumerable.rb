module MyEnumerable
  def all?
    res = true
    each do |item|
      res = false unless yield item
    end
    res
  end

  def any?
    res = false
    each do |item|
      res = true if yield item
    end
    res
  end

  def filter
    res = []
    each do |item|
      res.push(item) if yield item
    end
    res
  end
end
