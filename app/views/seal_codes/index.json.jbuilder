json.array!(@seal_codes) do |seal_code|
  json.extract! seal_code, :id, :from_branch_id, :to_branch_id, :date, :barcode, :received_by, :supposely_contains, :goldreport_id, :silverreport_id
  json.url seal_code_url(seal_code, format: :json)
end
