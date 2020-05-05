require 'pry'

class Project
  
  attr_accessor
  attr_reader :title
  @@all = []
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(some_backer)
    #binding.pry
    @backers << some_backer
    some_backer.back_project(self)
    @backers
  end
  
  
  
end