require 'date'
require_relative './item'
class Movie < Item
  attr_accessor :silet

  def initialize(silet:)
    super(publish_date: Date.today.to_s)
    @silet = silet
  end

  def to_json(*_args)
    JSON.dump(
      silet: @silet
    )
  end

  private

  def can_be_archived?
    return true if super && @silet
  end
end