class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def back_project(project)
        back = ProjectBacker.new(project, self)
    end
    def backed_projects
    boy = ProjectBacker.all.select {|project| project.backer == self}
    boy.map {|work| work.project}
    end
end