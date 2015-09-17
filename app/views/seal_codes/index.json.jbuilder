json.array!(@seal_codes) do |seal_code|
  json.extract! seal_code, :id, :from_branch, :to_branch, :date, :barcode, :received_by, :supposely_contains, :goldreport_id
  json.url seal_code_url(seal_code, format: :json)
end
