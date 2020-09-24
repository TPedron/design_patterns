class LongFormView

    def initialize(media_resource)
        @media_resource = media_resource
    end

    def show
        # Composes a simple view (could be html)
        puts @media_resource.title
        puts '-------------'
        puts @media_resource.image
        puts @media_resource.snippet
        puts "View more at #{@media_resource.url}"
    end

end