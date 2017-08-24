class Word < ApplicationRecord
  validates :word, :def0 presence: true

  def self.definition(word)
    #return definition if there is one
  end

  def self.add_fake_word(word)
    #add word to fake word DB
  end
end
