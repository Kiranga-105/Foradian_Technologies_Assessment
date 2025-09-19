class CreateCourses < ActiveRecord::Migration[8.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :code

      t.timestamps
    end
    add_index :courses, :code, unique: true
  end
end
