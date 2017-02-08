class Post < ActiveRecord::Base
  belongs_to :user

  before_save :filter

  validates :title, presence: true, length: {in: 2..30}
  validates :content, presence: true

  def filter
    self.content.gsub!(/fuck|hell|shit/,'****')
  end
end
