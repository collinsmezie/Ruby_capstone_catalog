require_relative '../model/movie'
require_relative '../model/source'
require_relative '../storage'

class MovieHandler
  @storage = Storage.new
  def self.add_movie(app)
    puts 'Please, create your movie : '
    print 'Is it silet? [Yes/No]: '
    silet = gets.chomp
    movie = Movie.new(silet: silet)
    app.create_movie(movie)
    puts 'Movie created successfully !!!'
    @storage.save_movie(app)
  end

  def self.list_movies(app)
    puts 'This is all the movies we have : '
    app.movies.each_with_index do |movie, _index|
      puts movie.silet.to_s
    end
  end
end
