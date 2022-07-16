require './item'
# rubocop: disable Metrics/ParameterLists

# create Book class
class Book < Item
  attr_accessor :cover_state

  def initialize(genre, author, source, label, publish_date, publisher, cover_state)
    super(genre, author, source, label, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    true if can_be_archived? || cover_state === 'bad' # rubocop:todo Style/CaseEquality
  end
end

# rubocop: enable Metrics/ParameterLists
