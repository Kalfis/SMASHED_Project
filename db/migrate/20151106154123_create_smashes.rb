class CreateSmashes < ActiveRecord::Migration
  def change
    create_table :smashes do |t|
      t.string :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
