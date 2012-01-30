class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :priority
      t.string :status

      t.timestamps
    end
  end
end
