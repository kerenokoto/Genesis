class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :title
      t.text :body
      t.references :event, index: true

      t.timestamps
    end
  end
end
