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
      Backer
      
  end
  
  
  
end