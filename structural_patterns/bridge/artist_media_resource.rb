class ArtistMediaResource

    def initialize(artist)
        @artist = artist
    end

    def snippet
        "#{@artist.real_name} has produced many albums including #{@artist.albums.first}"
    end

    def image
        @artist.image
    end

    def title
        "#{@artist.artist_type} #{@artist.stage_name}"
    end

    def url
        @artist.website
    end

end