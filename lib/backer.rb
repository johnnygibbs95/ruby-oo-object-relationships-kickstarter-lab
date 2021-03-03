require 'pry'
class Backer
    attr_reader :name
  
    def initialize(name)
        @name = name
    end
  
    def back_project(project)
        ProjectBacker.new(project, self)     
    end

    def backed_projects
        temp_array = ProjectBacker.all.select do |x|
            x.backer == self
        end
        temp_array.map do |x|
            x.project
        end
    end

  end 