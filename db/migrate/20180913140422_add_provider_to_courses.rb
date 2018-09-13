class AddProviderToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :provider, :string
  end
end
