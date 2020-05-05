require 'pry'

class Backer
  
  attr_accessor :backed_projects
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
    self.backed_projects << some_project
    if 
  end
  
  
  
end