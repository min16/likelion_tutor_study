#User.rb

```ruby
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


```

#Post.rb


```ruby
class Post < ActiveRecord::Base
  has_many :comments
  has_many :likes
  belongs_to :user

  before_save :filter

  validates :title, presence: true, length: {in: 2..30}
  validates :content, presence: true

  def filter
    self.content.gsub!(/fuck|hell|shit/,'****')
  end
end


```

#comment.rb


```ruby
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  before_save :filter

  validates :content, presence: true, length: {maximum: 200}

  def filter
    self.content.gsub!(/fuck|hell|shit/,'****')
  end
end
```

#group.rb

```ruby
class Group < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 20}, uniqueness: true
  has_many :user_groups
  has_many :users, :through => :user_groups
end

```

#like.rb


```ruby
class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
end
```
