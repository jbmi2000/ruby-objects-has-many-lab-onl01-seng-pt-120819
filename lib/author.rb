class Author
  attr_accessor :name

<<<<<<< HEAD
  @@post_count = 0

=======
>>>>>>> 2015cf8666cfe89ca0ef87fc7fa0041b5ed2ea82
  def initialize(name)
    @name = name
  end

<<<<<<< HEAD
  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

=======
>>>>>>> 2015cf8666cfe89ca0ef87fc7fa0041b5ed2ea82
  def add_post_by_title(title)
    post = Post.new(title, self)
  end

  def posts
    Post.all.select { |post| post.author == self }
  end

<<<<<<< HEAD
  def author_name
    if self.author
      self.author.name
    else
      "Author not found!"
    end
  end

=======
>>>>>>> 2015cf8666cfe89ca0ef87fc7fa0041b5ed2ea82
  def posts_by_title
    authors_posts = []
    Post.all_by_title.each do |post|
      if post.author == self
        authors_posts << post.title
      end
    end
    authors_posts
  end
<<<<<<< HEAD

  def self.post_count
    Post.all.count
  end
=======
>>>>>>> 2015cf8666cfe89ca0ef87fc7fa0041b5ed2ea82
end
