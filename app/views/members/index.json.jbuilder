json.array!(@attends) do |attend|
  json.extract! attend, :attend, :user_id, :party_id
  json.url attend_url(attend, format: :json)
end