class Artist
    attr_reader :stage_name, :real_name, :albums, :artist_type, :website, :summary, :image

    def initialize(stage_name:, real_name:, albums:, artist_type:, website:, image:)
        @stage_name = stage_name
        @real_name = real_name
        @albums = albums
        @artist_type = artist_type
        @website = website
        @image = image
    end
end