class Url < ApplicationRecord
  validates :original, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp }
  before_create :generate_short_url

  private

  def generate_short_url
    self.short = SecureRandom.hex(4) # Generates an 8-character short URL
  end
end
