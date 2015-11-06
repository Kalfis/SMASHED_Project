class CreateSmirks < ActiveRecord::Migration
  def change
    create_table :smirks do |t|
      t.string :content
      t.references :user, index: true
      t.references :smash, index: true

      t.timestamps
    end
  end
end
