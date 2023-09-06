module Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b[a-zA-Z]/)
      .each_with_object('') { |word, acronym| acronym << word[0] }
      .upcase
  end
end
