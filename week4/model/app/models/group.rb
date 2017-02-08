class Group < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 20}, uniqueness: true

end
