require './music_album'
require './item'
require 'date'

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

describe MusicAlbum do
  context 'When testing the Genre class' do
    it 'should return lists of items when we call the Genre method to the @items array' do
      newgenre = Genre.new('disc player')
      newauthor = Author.new('Ekene', 'Collins')
      newsource = Source.new('Nigeria')
      newlabel = Label.new('to the moon', 'red')
      newdate1 = Date.parse '01/06/2016'
      newdate2 = Date.parse '05/06/2016'
      date1 = newdate1.strftime('%d/%m/%Y').to_i
      date2 = newdate2.strftime('%d/%m/%Y').to_i
      album = MusicAlbum.new(newgenre, newsource, newauthor, newlabel, date1)
      album = MusicAlbum.new(newgenre, newsource, newauthor, newlabel, date2)
      music_objects = album.can_be_archived?
      expect(music_objects).to eq(false)
    end
  end
end
