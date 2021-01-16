class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        back = ProjectBacker.new(self, backer)
    end
    def backers
        boy = ProjectBacker.all.select {|project| project.project == self}
        boy.map {|work| work.backer}
    end
end