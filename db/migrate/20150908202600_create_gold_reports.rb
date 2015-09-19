class CreateGoldReports < ActiveRecord::Migration
  def change
    create_table :gold_reports do |t|
      t.date :end_date
      t.references :branch, index: true
      t.string :assistants
      t.integer :pawned_capital
      t.integer :bought_capital
      t.integer :export_real_weight
      t.integer :container_qty
      t.integer :pawns_listed_total_weight
      t.integer :pawns_10k_weight
      t.integer :pawns_14k_weight
      t.integer :pawns_18k_weight
      t.integer :pawns_with_diamonds_weight
      t.integer :pawns_saved_weight
      t.integer :pawns_stone_weight
      t.integer :pawns_other_weight
      t.integer :bought_listed_total_weight
      t.integer :bought_10k_weight
      t.integer :bought_14k_weight
      t.integer :bought_18k_weight
      t.integer :bought_with_diamonds_weight
      t.integer :bought_saved_weight
      t.integer :bought_stone_weight
      t.integer :bought_other_weight
      t.string :aasm_state
      t.text :comments

      t.timestamps null: false
    end
    add_foreign_key :gold_reports, :branches
  end
end
