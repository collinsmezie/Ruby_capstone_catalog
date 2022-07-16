require_relative '../model/movie'
require 'date'

describe Movie do
  before :each do
    @movie = Movie.new(silet: true)
  end

  it 'should return false' do
    expect(@movie.archived).to be(false)
  end

  it 'should return false' do
    @movie.move_to_archive
    expect(@movie.archived).to be(false)
  end
end
