class AddIsHomeworkFieldToPyramidModules < ActiveRecord::Migration[5.1]
  def change
  	add_column :pyramid_modules, :is_homework, :boolean
  end
end
