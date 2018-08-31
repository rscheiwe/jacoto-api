class ChangeAffiliatesToBeArrayInCourses < ActiveRecord::Migration[5.2]
  def change
    change_column :courses, :affiliates, "varchar[] USING (string_to_array(affiliates, ','))"

  end
end
