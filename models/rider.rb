class Rider < ActiveRecord::Base
  has_many :reviews

  def add_details(name, age, board_at, alight_at)
    @name = name
    @age = age
    @board_at = board_at
    @alight_at = alight_at
  end

end