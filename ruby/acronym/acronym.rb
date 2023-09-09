module Acronym
  def self.abbreviate(phrase)
    first_letters = /\b[a-zA-Z]/
    phrase.scan(first_letters)
      .each_with_object('') { |word, acronym| acronym << word[0] }
      .upcase
  end
end
