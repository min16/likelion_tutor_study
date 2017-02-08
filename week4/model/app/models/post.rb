class Post < ActiveRecord::Base
  belongs_to :user

  before_save :filter

  validates :title, presence: true, length: {maximum: 30, minimum: 2}
  validates :content, presence: true

  def filter
    self.content.gsub!(/fuck|hell|shit/,'****')
  end
end
