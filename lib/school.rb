class School 
  attr_reader :roster, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def name(school_name)
    @school_name = school_name
  end
  
  def roster=(roster)
    @roster = roster
  end
  
  def add_student(student_name, grade)
    if ! @roster.include?(grade) 
      @roster[grade] = [student_name]
    else @roster[grade] << student_name
    end
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each.sort_by {|grade, name| name}
  end
  
end