class Destination < ApplicationRecord
  has_and_belongs_to_many :rockets

  def to_s
    "#{planet}"
  end

end
