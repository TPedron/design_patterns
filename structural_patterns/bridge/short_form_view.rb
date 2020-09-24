class ShortFormView

    def initialize(media_resource)
        @media_resource = media_resource
    end

    def show
        puts @media_resource.title
        puts '--'
        puts @media_resource.snippet
    end

end