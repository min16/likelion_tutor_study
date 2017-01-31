class Post < ActiveRecord::Base
  after_initialize do |post|
    puts "You have initialized an object!"
  end

end
