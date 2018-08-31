class ChangeTracksToBeArrayInCourses < ActiveRecord::Migration[5.2]
  def change
    change_column :courses, :tracks, "varchar[] USING (string_to_array(tracks, ','))"

  end
end
