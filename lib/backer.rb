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
    if Project.all.any?{|project| project.title == some_project.title}
      self.backed_projects << some_project
      some_project.backers << self
      some_project
    else
      some_project = Project.new(some_project)
      self.backed_projects << some_project
      some_project.backers << self
      some_project
    end
  end
  
  
  
end