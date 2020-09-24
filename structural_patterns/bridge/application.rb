require_relative "artist_media_resource.rb"
require_relative "author_media_resource.rb"
require_relative "long_form_view.rb"
require_relative "short_form_view.rb"
require_relative "artist.rb"
require_relative "author.rb"


puts 'Long Form View'
mac_miller = Artist.new(
    stage_name: "Mac Miller",
    real_name: "Malcolm McCormick",
    albums: ["Faces", "GO:OD AM", "Swimming"],
    artist_type: "Rapper",
    website: "www.MacMillersWebsite.com",
    image: ":-)"
)
LongFormView.new(ArtistMediaResource.new(mac_miller)).show

puts ''

puts 'Short Form View'
james_sa_corey = Author.new(
    name: "James SA Corey",
    book_titles: ["Leviathan Wakes", "Cibola Burn"],
    website: "www.theexpanse.com",
    image: ";)"
)
ShortFormView.new(AuthorMediaResource.new(james_sa_corey)).show

# OUTPUT
# Long Form View
# Rapper Mac Miller
# -------------
# :-)
# Malcolm McCormick has produced many albums including Faces
# View more at www.MacMillersWebsite.com

# Short Form View
# Author James SA Corey
# --
# Author of Leviathan Wakes and many more!