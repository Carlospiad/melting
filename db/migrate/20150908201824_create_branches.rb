class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :code
      t.string :name
      t.string :telephone

      t.timestamps null: false
    end
  end
end
