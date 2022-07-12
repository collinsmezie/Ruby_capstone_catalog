# Item class definition
class Item
  attr_reader :id, :genre, :author, :source, :label, :publish_date

  def initialize(genre, author, source, label, publish_date)
    @id = id
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
  end

  def genre_setter=(_genre)
    @genre.items << self unless @genre.items.include?(self)
  end

  def author_setter=(_author)
    @author.items << self unless @author.items.include?(self)
  end

  def source_setter=(_source)
    @source.items << self unless @source.items.include?(self)
  end

  def label_setter=(_label)
    @label.items << self unless @label.items.include?(self)
  end

  def can_be_archived?
    @published_date > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
