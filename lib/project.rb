class Project

    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer = ProjectBacker.all.select {|backer| backer.project == self}
        backer.map {|project| project = project.backer}
     end
end