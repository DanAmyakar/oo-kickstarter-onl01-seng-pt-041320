require 'pry'

class Backer
  
  attr_accessor
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @backed_projects = []
    save
  end
  
  def save
    @@all << self
  end
  
  def back_project(some_project)
    
  end
  
  
  
end