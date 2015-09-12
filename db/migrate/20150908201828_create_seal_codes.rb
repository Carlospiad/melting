class CreateSealCodes < ActiveRecord::Migration
  def change
    create_table :seal_codes do |t|
      t.references :from_branch, index: true
      t.references :to_branch, index: true
      t.datetime :date
      t.string :barcode
      t.string :received_by
      t.integer :supposely_contains
      t.references :goldreport, index: true
      t.references :silverreport, index: true

      t.timestamps null: false
    end

  end
end
