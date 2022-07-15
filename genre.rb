require './item'

class Genre
  attr_reader :items, :id
  attr_accessor :name

  def initialize(name)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.genre = self
  end
end
