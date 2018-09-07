
class Query

  attr_accessor :term, :topic, :price

  def initialize(options = {})
    @term = options[:term] || ''
    @topic = options[:topic] || ''
    @price = options[:price] || ''
  end

  def filter_courses
    @courses = Course.all
    if self.term.length > 0
      @courses.select { |course| course.title.downcase.include?(self.term) }
    elsif self.topic.length > 0
      @courses.select { |course| course.title.downcase.include?("machine") }
    end
  end

end
