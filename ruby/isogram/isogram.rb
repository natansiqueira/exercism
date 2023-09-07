module Isogram
  def self.isogram?(phrase)
    phrase = phrase.downcase.scan(/\w/)
    phrase.uniq == phrase
  end
end
