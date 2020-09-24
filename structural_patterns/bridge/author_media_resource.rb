class AuthorMediaResource

    def initialize(author)
        @author = author
    end

    def snippet
        "Author of #{@author.book_titles.first} and many more!"
    end

    def image
        @author.image
    end

    def title
        "Author #{@author.name}"
    end

    def url
        @author.website
    end

end