json.array!(@notes) do |note|
  json.extract! note, :id, :project_id, :user_id, :name, :start, :due
  json.url note_url(note, format: :json)
end
