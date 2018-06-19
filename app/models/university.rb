class University < ApplicationRecord
  include PgSearch

  validates :name, presence: true
  pg_search_scope :full_text_search,
                  against: :name,
                  using: { tsearch: { prefix: true } }
end
