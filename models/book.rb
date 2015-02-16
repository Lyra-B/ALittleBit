class Book < ActiveRecord::Base
  has_many :chapters, -> {order :position}

  before_save :set_position_on_chapters
  private
  def set_position_on_chapters
    chapters.each_with_index do |c,i|
      c.position = i
    end
  end
end
