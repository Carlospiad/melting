json.array!(@gold_reports) do |gold_report|
  json.extract! gold_report, :id, :end_date, :branch_id, :assistants_id, :pawned_capital, :bought_capital, :export_real_weight, :container_qty, :pawns_listed_total_weight, :pawns_10k_weight, :pawns_14k_weight, :pawns_18k_weight, :pawns_with_diamonds_weight, :pawns_saved_weight, :pawns_stone_weight, :pawns_other_weight, :bought_listed_total_weight, :bought_10k_weight, :bought_14k_weight, :bought_18k_weight, :bought_with_diamonds_weight, :bought_saved_weight, :bought_stone_weight, :bought_other_weigth, :comments
  json.url gold_report_url(gold_report, format: :json)
end
