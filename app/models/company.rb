class Company < ApplicationRecord

  def to_s
    "#{ name }"
  end
end
