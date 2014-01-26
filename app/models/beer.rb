class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings, dependent: :destroy

  def to_s
    return "#{name}, #{brewery}"
  end

  def average_rating
    ratings = Rating.where beer_id:id
    if not ratings.nil?
      return ratings.map {|r| r.score}.reduce(0, :+) / ratings.count
    else
      return nil
    end
  end
end