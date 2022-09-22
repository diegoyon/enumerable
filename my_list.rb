require_relative './my_enumerable.rb'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end
  
  def each
    @list.each do |c|
      yield c
    end
  end

end

list = MyList.new(1,2,3,4)

p list.all? {|e| e < 5}

p list.all? {|e| e > 5}

p list.any? {|e| e == 2}

p list.any? {|e| e == 5}

p list.filter {|e| e.even?}