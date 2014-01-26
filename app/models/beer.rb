class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings

  def to_s
    return name
  end
end