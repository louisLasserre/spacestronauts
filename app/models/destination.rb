class Destination < ApplicationRecord
  has_and_belongs_to_many :rockets
  has_one_attached :planetImg
  has_one_attached :banner
  def to_s
    "#{planet}"
  end

end
