require_relative 'game'

module ListItems
    def initialize
        @list_options = '0'
    end

    def list_options
        puts 'which item would you like to list?'
        puts'1. List all Books'
        puts'2. List all Music Albums' 
        puts'3. List all Games'
    end

    def list_selected_item
        case @list_options
        when '1'
            list_books
        when '2'
            list_music_albums
        when '3'
            list_games
        else
            puts 'Invalid Selection!.'
        end
    end

    def list_items
        until %w[1 2 3].include?(@list_options)
            list_options
            print 'Select the item by number:'
            @list_options = gets.chomp
            list_selected_item
        end
        @list_options = '0'
    end

    def list_games
        @games.each_with_index do |game, index|
            puts "#{ index + 1} Last played at: #{game.last_played_at}, Multiplayer: #{game.multiplayer}, Publish date: #{game.publish_date}"
        end
    end

    def list_authors
        puts 'Select the author by number:'
        @authors.each_with_index do |author, index|
            puts "#{index + 1}. #{author.first_name} #{author.last_name}"
        end
    end

end
