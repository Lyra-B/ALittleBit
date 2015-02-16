class Book < ActiveRecord::Base
  has_many :chapters, -> {order :position}

  before_save :set_position_on_chapters

  # def chapters_attributes=(hash)
  #   hash.each do |index, chapter_values|
  #     self.chapters << Chapter.new(chapter_values)
  #   end
  # end
  accepts_nested_attributes_for :chapters

  private
  def set_position_on_chapters
    chapters.each_with_index do |c,i|
      c.position = i
    end
  end
end
