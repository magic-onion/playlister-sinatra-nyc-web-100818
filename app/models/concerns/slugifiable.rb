class Slug

  def files
    data_path = File.join(File.dirname(__FILE__), '..', 'db', 'data')
    Dir.entries(data_path)[2..-1]
  end

  def self.slug_artist_name()
    
  end

end

# Slug.slug_artist_name(FileNAME)
# =>taylor=swift,
#
# brain => exploded
#
#  = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
# slug
#
# = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
#
# #for genre
#
# file_array = filename.split(" - ")
# #returns array array[0] is artist
# artist.name = file_array[0]
# song_genre_array = file_array.split(" ")
# song_genre_array[0] # < song
# genre_array_dirty = song_genre_array[1].split(".")
# genre = genre_array_dirty[0].gsub(/[\[\]]/, '')
