class CourseSerializer < ActiveModel::Serializer
  attributes :title, :image, :summary, :slug, :syllabus, :affiliates, :tags, :tracks, :level
  # has_many :hobbies
end
