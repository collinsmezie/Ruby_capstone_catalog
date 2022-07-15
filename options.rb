def options(app)
  loop do
    puts 'Welcome to : Catalog of my things ! :)'
    puts 'Please chose an option : '
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List of games'
    puts '4 - List all movies'
    puts '5 - List all labels'
    puts '6 - List all authors'
    puts '7 - List all genres'
    puts '8 - List all sources'
    puts '9 - Add a book'
    puts '10 - Add a music album'
    puts '11 - Add a game'
    puts '12 - Add a movie'
    puts '0 - Exit'
    puts 'Enter your option : '
    input = gets.chomp.to_i
    Input.check_input(input, app)
  end
end
