class Brewery < ActiveRecord::Base
  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers

  def to_s
    return name
  end

  def average_rating
    return self.ratings.average(:score)
  end
end
