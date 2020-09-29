require_relative "caretaker.rb"
require_relative "originator.rb"

caretaker = Caretaker.new
originator = Originator.new

num_articles_saved = 0
current_article_idx = 0

# save first version of article
puts "FIRST VERSION OF ARTICLE"
first_version = "Breaking news lorem ipsum"
originator.set_article(first_version)
caretaker.add_memento(originator.store_in_memento)
num_articles_saved+=1
current_article_idx+=1

# save second version of article
puts ''
puts "SECOND VERSION OF ARTICLE"
second_version = "Extra extra read all about it lorem ipsum"
puts second_version
originator.set_article(second_version)
caretaker.add_memento(originator.store_in_memento)
num_articles_saved+=1
current_article_idx+=1

# rollback to first version of article
puts ''
puts "ROLLBACK TO FIRST VERSION OF ARTICLE"
current_article_idx-=1
first_version_memento = caretaker.get_memento(current_article_idx)
originator.restore_from_memento(first_version_memento)

# migrate back to latest version of article
puts ''
puts "MIGRATE TO SECOND VERSION OF ARTICLE AGAIN"
current_article_idx+=1
second_version_memento = caretaker.get_memento(current_article_idx)
originator.restore_from_memento(second_version_memento)

### OUTPUT
# FIRST VERSION OF ARTICLE
# Current version= Breaking news lorem ipsum
# Saving to memento

# SECOND VERSION OF ARTICLE
# Extra extra read all about it lorem ipsum
# Current version= Extra extra read all about it lorem ipsum
# Saving to memento

# ROLLBACK TO FIRST VERSION OF ARTICLE
# Previous article= Breaking news lorem ipsum

# MIGRATE TO SECOND VERSION OF ARTICLE AGAIN
# Previous article= Extra extra read all about it lorem ipsum