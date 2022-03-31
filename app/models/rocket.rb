class Rocket < ApplicationRecord
  belongs_to :company
  has_and_belongs_to_many :destinations
end
