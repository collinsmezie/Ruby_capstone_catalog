# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/CyclomaticComplexity
# start class definition
class Start
    def initialize
      @app = App.new
    end
  
    def handle_input(option)
      case option
      when 1
        @app.list_books
      when 2
        @app.list_music_album
      when 3
        @app.list_movies
      when 4
        @app.list_games
      when 5
        @app.list_genres
      when 6
        @app.list_labels
      when 7
        @app.list_authors
      when 8
        @app.list_sources
      when 9
        @app.add_book
      when 10
        @app.add_music_album
      when 11
        @app.add_movie
      when 12
        @app.add_game
      when 13
        # save_data(@app.books, @app.persons, @app.rentals)
        puts 'Catalog closed...'
        exit
      else
        puts 'Please select an option'
      end
    end
  
    def run
      puts 'Please choose an option:'
      puts '1. list all books'
      puts '2. list all music albums'
      puts '3. list all movies'
      puts '4. list of games'
      puts '5. list all genres'
      puts '6. list all labels'
      puts '7. list all authors'
      puts '8. list all sources'
      puts '9. Add a book'
      puts '10. Add a music album'
      puts '11. Add a movie'
      puts '12. Add a game'
      puts '13. Exit'
      option = gets.chomp.to_i
      handle_input(option)
    end
  end
  
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/CyclomaticComplexity