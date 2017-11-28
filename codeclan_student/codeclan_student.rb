class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort.to_i() # good idea to get into the habit of doing this as the information may come from a web form or database, meaning probably a string
  end

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "Hello"
  end

  def favourite_language(language)
    return "I love #{language}"
  end
end
