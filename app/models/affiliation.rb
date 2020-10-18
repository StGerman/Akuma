class Affiliation < ApplicationRecord
  belongs_to :category
  belongs_to :task
  validates :value, presence: true

end
