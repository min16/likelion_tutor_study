class Group < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 20}, uniqueness: true
  has_many :user_groups
  has_many :users, :through => :user_groups
end
