class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :skill
      t.string :email
      t.string :phone
      t.string :location
      t.string :visa
      t.string :rate
      t.string :availability
      t.references :user, index: true

      t.timestamps
    end
  end
end
