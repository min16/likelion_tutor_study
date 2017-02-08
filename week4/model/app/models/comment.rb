class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  before_save :filter

  validates :content, presence: true, length: {maximum: 200}

  def filter
    self.content.gsub!(/fuck|hell|shit/,'****')
  end
end
