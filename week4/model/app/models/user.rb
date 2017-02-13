class User < ActiveRecord::Base
    before_save :capitalize_name

    validates :name, presence: true, length: {maximum: 10}
    validates :age, presence: true, numericality: {only_integer: true}, inclusion: {in: 20..29}
    validates :mail, presence: true, uniqueness: true ,format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

    has_many :comments
    has_many :posts
    has_many :likes
    has_many :user_groups
    has_many :groups, :through => :user_groups
    def capitalize_name
      puts "capitalize"
      self.name.capitalize!
    end
end
