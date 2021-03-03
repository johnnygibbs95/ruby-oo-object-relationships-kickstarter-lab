class Project
    attr_reader :title
  
    def initialize(title)
      @title = title      
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        temp_array = ProjectBacker.all.select {|x| x.project == self}
        temp_array.map {|x| x.backer}
    end
  
    
end 