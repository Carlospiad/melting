class CreateSealCodes < ActiveRecord::Migration
  def change
    create_table :seal_codes do |t|
      t.integer :from_branch
      t.integer :to_branch
      t.datetime :date
      t.string :barcode
      t.string :received_by
      t.integer :supposely_contains
      t.references :gold_report, index: true

      t.timestamps null: false
    end
    add_foreign_key :seal_codes, :gold_reports
  end
end
