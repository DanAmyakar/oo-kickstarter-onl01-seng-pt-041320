require 'pry'

class Project
  
  attr_accessor
  attr_reader :title
  @@all = []
  
  def initialize(title)
    @title = title
    @backers = []
    save
  end
  
  def save
    @@all << self
  end
  
  def add_backer(some_backer)
    if Backer.all.any?{|backer| backer == some_backer}
      self.backers << some_backer
      some_backer.backed_projects << self
      some_backer
    else
      some_backer = Backer.new(some_backer)
      self.backers << some_backer
      some_backer.backed_projects << self
      some_backer
    end
  end
  
  
  
end