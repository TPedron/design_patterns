require_relative "memento.rb"

class Originator
    def initialize
        @article = nil
    end

    def set_article(article)
        @article = article
        puts "Current version= #{@article}"
    end

    def store_in_memento
        puts "Saving to memento"

        Memento.new(@article)
    end

    def restore_from_memento(memento)
        @article = memento.article

        puts "Previous article= #{@article}"

        @article
    end
end