class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :summary, :slug, :syllabus, :affiliates, :tags, :tracks, :level
  # has_many :hobbies
end
