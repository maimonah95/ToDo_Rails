class AddDescriptionToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :description, :string
  end
end
