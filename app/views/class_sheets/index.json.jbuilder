json.array!(@class_sheets) do |class_sheet|
  json.extract! class_sheet, :id, :name, :classHours, :venue
  json.url class_sheet_url(class_sheet, format: :json)
end
