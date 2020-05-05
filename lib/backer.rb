require 'pry'

class Backer
  
  attr_accessor
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(some_project)
    binding.pry
    @backed_projects << some_project
    some_project.add_backer(self)
    @backed_projects
  end
  
end