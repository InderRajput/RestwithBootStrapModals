class AddRelocationToSubmission < ActiveRecord::Migration
  def change
    add_column :submissions, :relocation, :string
  end
end
