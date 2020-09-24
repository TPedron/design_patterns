class Author
    attr_reader :name, :book_titles, :website, :image

    def initialize(name:, book_titles:, website:, image:)
        @name = name
        @book_titles = book_titles
        @website = website
        @image = image
    end
end