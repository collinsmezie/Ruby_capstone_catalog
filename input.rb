# rubocop --auto-correct-all --disable-uncorrectable
require './app'
require './handler/book_handler'
require './handler/music_handler'
require './handler/game_handler'
require './handler/movie_handler'
class Input
  def self.check_input(input, app)
    case input
    when 1..8
      list_data(input, app)
    when 9..12
      add_data(input, app)
    when 0
      puts 'changes saved!!'
      raise StopIteration
    else
      puts "You input #{input}"
    end
  end

  def self.list_data(input, app) # rubocop:todo Metrics/CyclomaticComplexity
    case input
    when 1
      #   List all books
      BookHandler.list_books(app)
    when 2
      #  List all music albums
      puts 'List all musics'
      MusicHandler.list_musics(app)
    when 3
      GameHandler.list_games(app)
    when 4
      #  List all movie
      puts 'List all movies'
      MovieHandler.list_movies(app)
    when 5
      puts 'List all labels'
      app.list_labels
    when 6
      puts 'List of authors'
      app.list_authors
    when 7
      #  List all genres
      puts 'Here is genres list: '
      app.list_genres
    when 8
      #  List all sources
      puts 'Here is sources list: '
      app.list_sources
    else
      puts 'invalid input'
    end
  end

  def self.add_data(input, app)
    case input
    when 9
      #  Add a book
      BookHandler.add_book(app)
    when 10
      #  Add a music album
      MusicHandler.add_music(app)
    when 11
      #  Add a game
      GameHandler.add_game(app)
    when 12
      #  Add a movie
      MovieHandler.add_movie(app)
    else
      puts 'invalid input'
    end
  end
end
# rubocop enable: Metrics/CyclomaticComplexity:
