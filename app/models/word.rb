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
      #fake word too old
      return [] if fake_word && fake_word.updated_at < Time.now - 2.hours
      definitions = fake_word ? fake_word.definitions : []
    end

    definitions
  end

  def self.add_fake_word(word)
    #add word to fake word DB or update time
    fake_word = Word.find_by(word: word)
    if fake_word
      fake_word.updated_at = Time.now
    else
      fake_word = Word.new
      fake_word.word = word.downcase
      fake_word.def0 = LiterateRandomizer.sentence

      #roll number of fake definitions
      rand_num = Random.rand(4)
      fake_word.def1 = LiterateRandomizer.sentence if rand_num > 0
      fake_word.def2 = LiterateRandomizer.sentence if rand_num > 1
      fake_word.def3 = LiterateRandomizer.sentence if rand_num > 2
    end
    fake_word.save
  end
end
