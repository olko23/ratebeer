class Rating < ActiveRecord::Base
  belongs_to :beer

  def to_s
    return "#{Beer.find_by(id:beer_id)} #{score}"
  end
end
