class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :image
      t.text :summary
      t.text :slug
      t.text :syllabus
      t.string :affiliates
      t.string :tags
      t.string :tracks
      t.string :level

      t.timestamps
    end
  end
end
