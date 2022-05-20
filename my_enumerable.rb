class Mylist
  attr_accessor :list  def initialize(*list)
    @list = list
  end
  include MyEnumerable  def each
    @list.each { |item| yield item if block_given? }
  end
endlist = Mylist.new(1, 2, 3, 4)list.all? { |e| e < 5 }
list.all? { |e| e > 5 }list.any? { |e| e == 2 }
list.any? { |e| e == 5 }list.filter(&:even?)