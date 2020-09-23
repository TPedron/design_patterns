class Book
    attr_reader :contents

    def initialize
        load_book # expensive operation
        parse_book # expensive parsing of string
    end

    # methods below require the book contents loaded
    def word_count
        @word_count
    end

    def character_count
        @character_count
    end

    private
    def load_book
        sleep(1) # simulate slowly loading contents of book from a file/DB/API
        @contents = "The Expanse 9 - Leviathan Falls \nChapter 1 \nJim Holden ate the Protomolecule..."
    end

    def parse_book
        sleep(1) # simulate expensive string parsing operations
        @word_count = @contents.scan(/\w+/).size
        @character_count = @contents.length
    end
end