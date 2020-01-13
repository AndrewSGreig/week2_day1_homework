class Student

  def initialize(input_student_name, input_cohort)
   @student_name = input_student_name
   @cohort = input_cohort
   @talk = ""
  end


#getters
  def get_student_name()
    return @student_name
  end

  def get_cohort()
    return @cohort
  end

  def get_talk()
    return @talk
  end




  #SETTERS
  def set_student_name(new_student_name)
    @student_name = new_student_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def set_talk(new_talk_value)
    @talk = new_talk_value
  end




  def my_fav_language(language)
    return "I love " + language
  end



end
