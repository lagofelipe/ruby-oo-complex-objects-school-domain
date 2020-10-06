class School 
attr_accessor :roster, :grade
attr_reader :name

def initialize(name)
    @name = name
    @roster = {}
end

def add_student(name, grade)
    @name = name
    @grade = grade

    roster[grade] ||= []
     @roster[grade] << @name
    end

def grade (grade)
roster[grade]
end

def sort
    sorted_names = {}
@roster.each {|grade, name| sorted_names[grade] = name.sort}
sorted_names
end


end