class Author
  # define_method("some_method") do
  #   puts "Some details"
  # end

  # def fiction_details arg
  #   puts "fiction"
  #   puts arg
  #   puts "something else..."
  # end

  # def coding_details arg
  #   puts "coding"
  #   puts arg
  #   puts "something else..."
  # end

  # def history_details arg
  #   puts "history"
  #   puts arg
  #   puts "something else..."
  # end

  #creates the above methods at runtime.
  genres = %w(fiction coding history)
  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

author = Author.new
#author.some_method
author.coding_details("Cal Newport")
author.fiction_details("Ayn Rand")
author.history_details("Albert Einstein")
p author.respond_to?(:coding_details)