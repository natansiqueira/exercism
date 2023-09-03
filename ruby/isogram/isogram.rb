module Isogram
  def self.isogram?(phrase)
    phrase = phrase.split(/\W+/).join.downcase
    phrase.size == phrase.split('').to_set.size
  end
end
