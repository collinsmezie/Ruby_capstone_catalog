require_relative './item'
class Source
  attr_reader :id, :items
  attr_accessor :name

  def initialize(name:)
    @name = name
    @id = Random.rand(1..1000)
    @items = []
  end

  def to_json(*_args)
    JSON.dump(
      name: @name
    )
  end

  def add_item(item)
    @items << item
    item.source = self
  end
end
