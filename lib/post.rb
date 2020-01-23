class Post
  attr_accessor :title, :author

  @@all = []
  @@all_by_title = []

  def initialize(title, author=nil)
    @title = title
    @author = author
    @@all << self
    @@all_by_title << self
  end

  def author_name
<<<<<<< HEAD
    if @author == nil
      return nil
    else
      @author.name
    end
  end

  # def author_name
  #   if self.author
  #     self.author.name
  #   else
  #     "Author not found!"
  #   end
  # end

=======
    if self.author
      self.author.name
    else
      "Author not found!"
    end
  end

>>>>>>> 2015cf8666cfe89ca0ef87fc7fa0041b5ed2ea82
  def self.all
    @@all
  end

  def self.all_by_title
    @@all_by_title
  end
end
