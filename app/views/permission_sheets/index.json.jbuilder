json.array!(@permission_sheets) do |permission_sheet|
  json.extract! permission_sheet, :id, :name
  json.url permission_sheet_url(permission_sheet, format: :json)
end
