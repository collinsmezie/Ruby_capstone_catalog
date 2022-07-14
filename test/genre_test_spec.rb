require './genre'
require './item'

class Source
  attr_reader :items, :id
  attr_accessor :name

  def initialize(name)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.source = self
  end
end

class Author
  attr_reader :items, :id
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.author = self
  end
end

class Label
  attr_reader :items, :id
  attr_accessor :first_name, :last_name

  def initialize(title, color)
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.label = self
  end
end

describe Genre do
  context 'When testing the Genre class' do
    it 'should return Blues when we call the Genre method' do
      genre = Genre.new('Blues')
      expect(genre.name).to eq 'Blues'
    end
  end

  it 'should return lists of items when we call the Genre method to the @items array' do
    newgenre = Genre.new('disc player')
    newsource = Source.new('Nigeria')
    newauthor = Author.new('Ekene', 'Collins')
    newlabel = Label.new('to the moon', 'red')
    newitemobject = Item.new(newgenre, newsource, newauthor, newlabel, '2015/08/08')
    item_objects = newgenre.add_item(newitemobject)
    expect(item_objects.name).to eq('disc player')
  end
end
