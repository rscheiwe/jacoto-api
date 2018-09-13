class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :summary, :slug, :syllabus, :affiliates, :tags, :tracks, :level, :provider
  # has_many :hobbies
end
