json.array!(@caring_records) do |caring_record|
  json.extract! caring_record, :id, :studentId, :careMemberId, :careDate, :careMethod, :description, :reasonsForLeaving, :callback
  json.url caring_record_url(caring_record, format: :json)
end
