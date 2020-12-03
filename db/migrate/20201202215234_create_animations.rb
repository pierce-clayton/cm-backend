class CreateAnimations < ActiveRecord::Migration[6.0]
  def change
    create_table :animations do |t|
      t.string :nickname
      t.string :length
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
