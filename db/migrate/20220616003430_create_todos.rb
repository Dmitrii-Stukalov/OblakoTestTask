class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.references :project, null: false, foreign_key: true
      t.string :text
      t.boolean :is_completed

      t.timestamps
    end
  end
end
