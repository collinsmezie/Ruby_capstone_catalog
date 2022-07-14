require './start'

def startapp
  musicstart = Start.new
  musicstart.handle_input(option)
end

class AllMusicList
  def list_all_music(_musics)
    @musics.each_with_index do |music, index|
      puts "#{index} Name: #{music.author.first_name}
      Genre: #{music.genre.name} ID: #{music.id} Publish_date: #{music.publish_date}"
    end
  end

  def list_music_album
    list_all_music
    puts 'Press enter to continue.'
    gets.chomp
    startapp
  end
end

class AllgenreList
  def list_all_genre
    @genres.each_with_index do |genre, index|
      puts "#{index} Name: #{genre.name} id: #{genre.id}"
    end
  end

  def list_genres
    list_all_genre
    puts 'Press enter to continue.'
    gets.chomp
    startapp
  end
end

class AlbumCreate
  def create_album
    print 'Select a Genre: '
    list_music_album
    input1 = gets.chomp.to_i
    print 'Select author: '
    # author gotten from partner
    input2 = gets.chomp.to_i
    print 'Select source: '
    # source gotten from partner
    input3 = gets.chomp
    print 'Select label: '
    # label gotten from partner
    input4 = gets.chomp
    print "\n Publish_Date(yyyy/mm/dd): "
    date = gets.chomp
    music_albums = MusicAlbum.new(@genre[input1], @author[input2], @source[input3], @label[input4], date)
    @musics << music_albums
    puts 'Muscic created successfully '
    startapp
  end
end
