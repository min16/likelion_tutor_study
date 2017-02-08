class User < ActiveRecord::Base
    before_save :capitalize_name

    validates :name, presence: true, length: {maximum: 10}
    validates :age, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 20, less_than: 30}
    validates :mail, presence: true, uniqueness: true ,format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
    def capitalize_name
      puts "capitalize"
      self.name.capitalize!
    end
end
