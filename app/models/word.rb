class Word < ApplicationRecord
  validates :word, :def0, presence: true

  def definitions
    defs = [self.def0]
    defs << def1 if def1
    defs << def2 if def2
    defs << def3 if def3
    defs
  end

  def self.definition(word)
    #return definition if there is one
    definitions = Wordnik.word.get_definitions(word).map {|wordnik| wordnik["text"] }
    if definitions.empty?
      fake_word = Word.find_by(word: word.downcase)
      definitions = fake_word ? fake_word.definitions : []
    end

    definitions
  end

  def self.add_fake_word(word)
    #add word to fake word DB or update time
    fake_word = Word.new
    fake_word.word = word.downcase
    fake_word.def0 = LiterateRandomizer.sentence
    fake_word.save
  end
end
