class BookProxy
    attr_accessor :book # exposed only to check that book is not loaded after BookProxy instantiation

    def initialize
        @book = nil # not loaded until needed
    end

    # methods below conform to public interface of Book class
    def contents # match to public attribute of Book class
        instantiate_book if @book.nil?
        @book.contents
    end

    def word_count
        instantiate_book if @book.nil?
        @book.contents.scan(/\w+/).size
    end

    def character_count
        instantiate_book if @book.nil?
        @book.contents.length
    end

    private

    def instantiate_book
        @book = Book.new
    end
end