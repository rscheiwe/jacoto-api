
class Query

  attr_accessor :term

  def initialize(term:)
    @term = term
  end

  def filter_courses
    @courses = Course.all
    @courses.select { |course| course.title.downcase.include?(self.term) }
  end

end
