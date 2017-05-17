class CreateUserCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :user_categories do |t|
      t.references :user
      t.references :category

      t.timestamps
    end
  end
end
