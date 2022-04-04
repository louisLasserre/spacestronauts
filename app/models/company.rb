class Company < ApplicationRecord
  has_one_attached :logo
  def to_s
    "#{ name }"
  end
end
