class Backer

    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       proj = ProjectBacker.all.select {|project| project.backer == self}
       proj.map {|backer| backer = backer.project}
    end
end